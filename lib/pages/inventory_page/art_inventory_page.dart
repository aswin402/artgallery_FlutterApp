import 'package:flutter/material.dart';

import '../../api/models/art.dart';
import '../../api/services/art_service.dart';
import '../../core/theme/theme_x.dart';
import '../../core/widgets/edit_art_dialog.dart';
import '../../core/widgets/inventory_row.dart';
import '../../core/widgets/inventory_search.dart';

class ArtInventoryPage extends StatefulWidget {
  const ArtInventoryPage({super.key});

  @override
  State<ArtInventoryPage> createState() => _ArtInventoryPageState();
}

class _ArtInventoryPageState extends State<ArtInventoryPage> {
  final TextEditingController _searchCtrl = TextEditingController();

  List<Art> _arts = [];
  List<Art> _filtered = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadArts();
  }

  Future<void> _loadArts() async {
    try {
      final data = await ArtService.getAllArts();
      if (!mounted) return;

      setState(() {
        _arts = data;
        _filtered = data;
        _loading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _loading = false);
    }
  }

  void _search(String q) {
    setState(() {
      _filtered = _arts.where((a) =>
          a.artname.toLowerCase().contains(q.toLowerCase()) ||
          a.artist.toLowerCase().contains(q.toLowerCase())).toList();
    });
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// HEADER
          Row(
            children: [
              Icon(Icons.inventory_2, color: context.colors.fontcolor),
              const SizedBox(width: 8),
             Text(
                'Art Inventory',
                style: TextStyle(
                  color: context.colors.fontcolor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          /// SEARCH
          InventorySearch(
            controller: _searchCtrl,
            onChanged: _search,
          ),

          const SizedBox(height: 20),

          /// TABLE HEADER
          _tableHeader(),

          const SizedBox(height: 12),

          /// TABLE BODY (FIXED HEIGHT — IMPORTANT)
          SizedBox(
            height: 500, // ✅ prevents unbounded height crash
            child: _loading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: _filtered.length,
                    itemBuilder: (_, i) {
                      final art = _filtered[i];
                      return InventoryRow(
                        art: art,
                    onEdit: () {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (dialogContext) => EditArtDialog(
      art: art,
      onSubmit: (updatedArt) async {
        try {
          await ArtService.updateArt(updatedArt);

          if (!mounted) return;

          Navigator.of(dialogContext).pop(); // ✅ SAFE
          _loadArts(); // refresh list
        } catch (e) {
          debugPrint('Update failed: $e');
        }
      },
    ),
  );
},

                        onDelete: () async {
                          await ArtService.deleteArt(art.id);
                          if (!mounted) return;
                          _loadArts();
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _tableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: context.colors.border),
        ),
      ),
      child: const Row(
        children: [
          _HeaderCell('ID', 1),
          _HeaderCell('Art Name', 3),
          _HeaderCell('Artist', 3),
          _HeaderCell('Price', 2),
          _HeaderCell('Actions', 3),
        ],
      ),
    );
  }
}

class _HeaderCell extends StatelessWidget {
  final String text;
  final int flex;

  const _HeaderCell(this.text, this.flex);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        style:  TextStyle(
          color: context.colors.fontcolor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
