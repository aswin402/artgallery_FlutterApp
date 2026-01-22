import 'package:flutter/material.dart';
import '../../core/theme/app_text.dart';
import '../../core/theme/theme_x.dart';
import '../../core/widgets/principle_card.dart';



class PrinciplesSection extends StatelessWidget {
  const PrinciplesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      width: double.infinity,
      child: Column(
        children: [
          /// Section header
          Text(
            'Our Guiding Principles',
            textAlign: TextAlign.center,
            style: AppText.h1(context).copyWith(fontSize: 26),
          ),

          const SizedBox(height: 12),

          Text(
            "We're building more than a platform—we're creating a sustainable future for digital artists and collectors worldwide.",
            textAlign: TextAlign.center,
            style: AppText.body(context).copyWith(
              color: context.colors.mutedForeground,
            ),
          ),

          const SizedBox(height: 32),

          /// Cards
          Column(
            children: const [
              PrincipleCard(
                title: 'Our Mission',
                description:
                    'To empower artists by providing an innovative platform where creativity, technology, and commerce seamlessly converge.',
                points: [
                  'Support emerging digital artists',
                  'Democratize art ownership',
                  'Foster sustainable creative careers',
                ],
              ),

              SizedBox(height: 16),

              PrincipleCard(
                title: 'Our Vision',
                description:
                    "To become the world's most trusted digital art ecosystem where artists and collectors thrive together.",
                points: [
                  'Global creative community hub',
                  'Cutting-edge art technology',
                  'Cross-cultural art exchange',
                ],
              ),

              SizedBox(height: 16),

              PrincipleCard(
                title: 'Our Values',
                description:
                    'Built on foundations of integrity, innovation, and inclusivity for a sustainable digital art ecosystem.',
                points: [
                  'Transparency in all operations',
                  'Artist-first approach',
                  'Environmental responsibility',
                  'Community-driven development',
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
