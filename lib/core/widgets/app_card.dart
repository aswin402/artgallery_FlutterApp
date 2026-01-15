import 'package:artgallery/core/theme/theme_x.dart';
import 'package:flutter/material.dart';
import '../theme/app_text.dart';

class AppArtCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const AppArtCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 340,
        height: 380,
        decoration: BoxDecoration(
          color: context.colors.card,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: context.colors.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.asset(imageUrl, fit: BoxFit.cover),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppText.h4(
                      context,
                    ).copyWith(color: context.colors.cardForeground),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: AppText.muted(
                      context,
                    ).copyWith(color: context.colors.cardForeground),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PrincipleCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> points;

  const PrincipleCard({
    super.key,
    required this.title,
    required this.description,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: context.colors.cardSecondary,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: context.colors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          Text(
            title,
            style: AppText.h2(context).copyWith(fontSize: 18),
          ),

          const SizedBox(height: 10),

          /// Description
          Text(
            description,
            style: AppText.body(context).copyWith(
              color: context.colors.mutedForeground,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 14),

          /// Bullet points
          Column(
            children: points.map((point) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Dot
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),

                    /// Text
                    Expanded(
                      child: Text(
                        point,
                        style: AppText.body(context).copyWith(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
