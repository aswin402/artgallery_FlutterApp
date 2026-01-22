import 'package:artgallery/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import '../theme/app_text.dart';
import '../theme/theme_controller.dart';
import '../theme/theme_x.dart';

class AppTopNavbar extends StatelessWidget {
  final VoidCallback onMenuTap;

  const AppTopNavbar({
    super.key,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.navbar,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: context.colors.border),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              /// LOGO
              Row(
                children: [
                  Icon(Icons.brush, color: context.colors.primary),
                  const SizedBox(width: 8),
                  Text('artGallery', style: AppText.h3(context)),
                ],
              ),

              const Spacer(),

              /// GET STARTED
              AppButton(
                text: 'Get Started',
                onPressed: () {},
              ),

              const SizedBox(width: 8),

              /// THEME TOGGLE
              ValueListenableBuilder<ThemeMode>(
                valueListenable: ThemeController.themeMode,
                builder: (_, mode, _) {
                  final isDark = mode == ThemeMode.dark;

                  return Container(
                    decoration: BoxDecoration(
                      color: context.colors.themeToggleButtonbg,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      tooltip: 'Toggle Theme',
                      onPressed: ThemeController.toggleTheme,
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: Icon(
                          isDark ? Icons.dark_mode : Icons.light_mode,
                          key: ValueKey(isDark),
                          color: context.colors.themeToggleButton,
                        ),
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
      ),
    );
  }
}
