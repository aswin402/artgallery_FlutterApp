import 'package:artgallery/pages/home/hero_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     child: Column(
      children: [
        HeroSection(),
      ],
     ),
    );
  }
}
