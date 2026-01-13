import 'package:artgallery/core/theme/theme_x.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_text.dart';
import '../../core/widgets/app_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.symmetric(vertical: 160),
       height: 900,
       color: context.colors.background,
       child: Center(
        child: Column(
          children: [
               Padding(
                 padding: const EdgeInsets.all(16),
                 child: Text(
                  'Art Gallery Discover Arts & Selling place',
                  style: AppText.h1(context),
                              ),
               ),
          
            const SizedBox(height: 14),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Explore a collection of Arts, ready to preview and buy the Arts. Publish your Arts on ArtGallery and sell you Arts.',
                style: AppText.body(context),
              ),
            ),

            const SizedBox(height: 14),

          
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                text: 'Get Started',
                onPressed: () {},
                height: 40,
                width: 140,
                trailingIcon: Icons.arrow_outward,
                   ),
                
                const SizedBox(width: 16),

                SecondaryButton(
                text: 'Explore',
                onPressed: () {},
                height: 40,
                width: 140,
                trailingIcon: Icons.brush,
                   ),
              ],
            ),
          
          ],
        ),
      ),
    );
  }
}
