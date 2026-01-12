import 'package:flutter/material.dart';
import '../../core/theme/app_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello Art Gallery 👋',
          style: AppText.h1(context),
        ),
      ),
    );
  }
}
