import 'package:flutter/material.dart';
import '../core/widgets/app_navbar.dart';

class AppShell extends StatelessWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppTopNavbar(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
