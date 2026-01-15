import 'package:artgallery/pages/about/principles_section.dart';
import 'package:artgallery/pages/about/team_section.dart';
import 'package:flutter/material.dart';
import 'hero_section.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AboutHeroSection(),
          PrinciplesSection(),
          TeamSection(),
        ],
      ),
    );
  }
}
