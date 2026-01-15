import 'package:artgallery/core/theme/app_text.dart';
import 'package:flutter/material.dart';
import '../../core/theme/theme_x.dart';
class ContactItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String value;

  const ContactItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colors.secondary,
          ),
          child: Icon(
            icon,
            color: context.colors.primary,
            size: 26,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: AppText.h3(context),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style:  AppText.muted(context).copyWith(
            color: context.colors.muted,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style:  AppText.body(context).copyWith(
            color: context.colors.primary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
