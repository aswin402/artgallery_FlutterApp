import 'dart:ui';
import 'package:flutter/material.dart';

class BlurDrawer extends StatelessWidget {
  final Widget child;

  const BlurDrawer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// BLUR BACKGROUND
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              color: Colors.black.withValues(alpha: 0.1),
            ),
          ),
        ),

        /// DRAWER CONTENT
        Align(
          alignment: Alignment.centerRight,
          child: child,
        ),
      ],
    );
  }
}
