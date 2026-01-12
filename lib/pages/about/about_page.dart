import 'package:flutter/material.dart';
import '../../core/theme/app_text.dart';

class ArtPage extends StatelessWidget {
  const ArtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Art Page', style: AppText.h1(context)),
    );
  }
}
