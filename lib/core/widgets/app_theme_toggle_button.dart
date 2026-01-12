import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';

class AppThemeToggleButton extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggle;
  final double size;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? iconColor;
  final bool showAnimation;

  const AppThemeToggleButton({
    Key? key,
    required this.isDarkMode,
    required this.onToggle,
    this.size = 40.0,
    this.padding,
    this.backgroundColor,
    this.iconColor,
    this.showAnimation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    
    return GestureDetector(
      onTap: onToggle,
      child: Container(
        padding: padding ?? const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor ??
              (isDark ? AppColors.darkCard : AppColors.card),
          borderRadius: BorderRadius.circular(AppRadius.lg),
          border: Border.all(
            color: isDark ? AppColors.darkBorder : AppColors.border,
            width: 1,
          ),
        ),
        child: AnimatedSwitcher(
          duration: showAnimation 
              ? const Duration(milliseconds: 300)
              : Duration.zero,
          transitionBuilder: (child, animation) {
            return RotationTransition(
              turns: Tween<double>(begin: 0.5, end: 1).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOut),
              ),
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          child: isDarkMode
              ? Icon(
                  Icons.light_mode,
                  key: const ValueKey('light'),
                  size: size,
                  color: iconColor ??
                      (isDark 
                          ? AppColors.primaryForeground 
                          : AppColors.primary),
                )
              : Icon(
                  Icons.dark_mode,
                  key: const ValueKey('dark'),
                  size: size,
                  color: iconColor ??
                      (isDark 
                          ? AppColors.primaryForeground 
                          : AppColors.primary),
                ),
        ),
      ),
    );
  }
}