import 'package:flutter/material.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/app_card.dart';


 class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 160),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Ignite Your Imagination',
              textAlign: TextAlign.center,
              style: AppText.h1(context),
            ),
          ),

          const SizedBox(height: 14),

                AppArtCard(
                  imageUrl: 'assets/image1.jpg',
                  title: 'Explore New Arts',
                  subtitle:
                      'Find untapped creativity to explore effortlessly.',
                ),

          const SizedBox(height: 22),

                AppArtCard(
                  imageUrl: 'assets/image2.jpg',
                  title: 'Unleash Creativity',
                  subtitle:
                      'Craft contents that resonates and inspires Arts.',
                ),


           const SizedBox(height: 22),


                 AppArtCard(
                  imageUrl: 'assets/image3.jpg',
                  title: 'Modern Collections',
                  subtitle:
                      'Curated art pieces from modern artists.',
                ),
        ],
      )
    );
  }
}
