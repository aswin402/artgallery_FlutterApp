import 'package:artgallery/app/app_shell.dart';
import 'package:artgallery/core/theme/app_theme.dart';
import 'package:artgallery/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Art Gallery',
      theme: AppTheme.dark,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const AppShell(child: HomePage(),)
    );
  }
}

