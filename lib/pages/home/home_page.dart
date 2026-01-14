import 'hero_section.dart';
import 'package:flutter/material.dart';
import 'features_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     child: Column(
      children: [
        HeroSection(),
        FeaturesSection(),
      ],
     ),
    );
  }
}
