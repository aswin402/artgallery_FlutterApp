import 'package:artgallery/pages/art/art_list_page.dart';
import '/app/app_shell.dart';
import '/core/theme/app_theme.dart';
import '/core/theme/theme_controller.dart';
import '/pages/home/home_page.dart';
import '/pages/contactus/contact_us_page.dart';
import 'package:flutter/material.dart';
import 'pages/about/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeController.themeMode,
      builder: (_, mode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Art Gallery',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: mode,
          home: const AppShell(child: ArtListPage()),
        );
      },
    );
  }
}
