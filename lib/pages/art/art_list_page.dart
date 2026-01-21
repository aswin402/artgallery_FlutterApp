import 'package:flutter/material.dart';
import '../../core/widgets/art_card.dart';
import '../../api/models/art.dart';
import '../../api/services/art_service.dart';

class ArtListPage extends StatefulWidget {
  const ArtListPage({super.key});

  @override
  State<ArtListPage> createState() => _ArtListPageState();
}

class _ArtListPageState extends State<ArtListPage> {
  late Future<List<Art>> artsFuture;

  @override
  void initState() {
    super.initState();
    artsFuture = ArtService.getAllArts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Art>>(
      future: artsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        final arts = snapshot.data!;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.7,
          ),
          itemCount: arts.length,
          itemBuilder: (context, index) {
            return ArtCard(
              art: arts[index],
              onTap: () {
                // Navigate to detail page later
              },
            );
          },
        );
      },
    );
  }
}
