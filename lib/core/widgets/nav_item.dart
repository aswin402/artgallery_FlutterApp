import 'package:flutter/material.dart';

import '../theme/app_text.dart';
import '../theme/theme_x.dart';

class NavItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isActive
                ? context.colors.primary.withValues(alpha: 0.12)
                : Colors.transparent,
          ),
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: 4,
                height: 18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: isActive
                      ? context.colors.primary
                      : Colors.transparent,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: AppText.body(context).copyWith(
                  fontSize: 16,
                  fontWeight:
                      isActive ? FontWeight.w600 : FontWeight.w400,
                  color: isActive
                      ? context.colors.primary
                      : context.colors.fontcolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
