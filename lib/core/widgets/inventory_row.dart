import 'package:flutter/material.dart';
import '../../api/models/art.dart';
import '../theme/app_text.dart';
import '../theme/theme_x.dart';

class InventoryRow extends StatelessWidget {
  final Art art;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final bool isLast;

  const InventoryRow({
    super.key,
    required this.art,
    required this.onEdit,
    required this.onDelete,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : Border(
                bottom: BorderSide(color: context.colors.border),
              ),
      ),
      child: Row(
        children: [
          _cell(context, art.id.toString(), flex: 1),
          _cell(context, art.artname, flex: 3),
          _cell(context, art.artist, flex: 3),
          _cell(context, '₹${art.price}', flex: 2),

          Expanded(
            flex: 3,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: onEdit,
                  icon:  Icon(Icons.edit, size: 20, color: context.colors.primary),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  visualDensity: VisualDensity.compact,
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: onDelete,
                  icon: const Icon(Icons.delete_outline, size: 20, color: Colors.redAccent),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  visualDensity: VisualDensity.compact,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _cell(BuildContext context, String text, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Text(
          text,
          style: AppText.body(context).copyWith(
            color: context.colors.fontcolor,
            fontSize: 13,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
