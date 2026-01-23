import 'package:artgallery/core/theme/theme_x.dart';
import 'package:flutter/material.dart';
import '../theme/app_text.dart';

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
      width: 310,
      height: 260,
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
            style: AppText.h2(context).copyWith(fontSize: 18,color: context.colors.cardSecondaryForeground),
          ),

          const SizedBox(height: 10),

          /// Description
          Text(
            description,
            style: AppText.body(context).copyWith(
              color: context.colors.cardSecondaryForeground,
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
                        style: AppText.body(context).copyWith(
                          color: context.colors.cardSecondaryForeground,
                          fontSize: 13,),
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
