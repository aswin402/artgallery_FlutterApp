import 'package:flutter/material.dart';
import 'package:artgallery/core/theme/theme_x.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/app_button.dart';

class AboutHeroSection extends StatelessWidget {
  const AboutHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
      width: double.infinity,
      color: context.colors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Badge
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: context.colors.muted,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'About ArtGallery',
              style: AppText.muted(context).copyWith(fontSize: 12),
            ),
          ),

          const SizedBox(height: 18),

          ///Title
          RichText(
            text: TextSpan(
              style: AppText.h1(context),
              children: [
                const TextSpan(text: 'Where Art Meets\n'),
                TextSpan(
                  text: 'Technology',
                  style: AppText.h1(context).copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          /// Description
          Text(
            'ArtGallery is a digital marketplace and creative platform built '
            'to empower artists and connect collectors with meaningful art '
            'from around the world.',
            style: AppText.body(context).copyWith(
              color: context.colors.mutedForeground,
            ),
          ),

          const SizedBox(height: 24),

          /// Actions
          Row(
            children: [
              AppButton(
                text: 'Get Started',
                onPressed: () {},
                height: 42,
                width: 150,
                trailingIcon: Icons.arrow_outward,
              ),
              const SizedBox(width: 12),
              SecondaryButton(
                text: 'Explore',
                onPressed: () {},
                height: 42,
                width: 140,
                trailingIcon: Icons.brush,
              ),
            ],
          ),

          const SizedBox(height: 32),

          /// Hero Image
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(
              'assets/image1.jpg',
              width: double.infinity,
              height: 340,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
