import 'package:flutter/material.dart';
import '../theme/app_text.dart';
import '../theme/theme_controller.dart';
import '../theme/theme_x.dart';

class AppTopNavbar extends StatelessWidget {
  final VoidCallback onMenuTap;

  const AppTopNavbar({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
  height: 60,
  width: constraints.maxWidth,
  margin: const EdgeInsets.only(top: 32),
  decoration: BoxDecoration(
    color: context.colors.navbar,
    borderRadius: BorderRadius.circular(24),
    border: Border.all(color: context.colors.border),
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center, // 👈 important
      children: [
        /// LOGO
        Expanded(
          child: Row(
            children: [
              Icon(Icons.brush, color: context.colors.primary),
              const SizedBox(width: 8),
              Text(
                'artGallery',
                style: AppText.h3(context),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),

        /// THEME TOGGLE
        ValueListenableBuilder<ThemeMode>(
          valueListenable: ThemeController.themeMode,
          builder: (_, mode, _) {
            final isDark = mode == ThemeMode.dark;

            return Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                color: context.colors.themeToggleButtonbg,
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: ThemeController.toggleTheme,
                child: Icon(
                  isDark ? Icons.dark_mode : Icons.light_mode,
                  size: 20,
                  color: context.colors.themeToggleButton,
                ),
              ),
            );
          },
        ),

        /// MENU BUTTON
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: onMenuTap,
        ),
      ],
    ),
  ),
);
      },
    );

  }
}
