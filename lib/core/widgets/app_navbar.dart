import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text.dart';

class AppTopNavbar extends StatelessWidget {
  const AppTopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkNavbar,
        borderRadius: BorderRadius.circular(30), 
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              // Logo + Title
              Row(
                children: [
                  Icon(Icons.brush, color: AppColors.primary),
                  const SizedBox(width: 8),
                  Text('artGallery', style: AppText.h2(context)),
                ],
              ),
      
              const Spacer(),
      
              // Get Started Button
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text('Get Started'),
              ),
      
              const SizedBox(width: 8),
      
              // Theme Icon
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.dark_mode_outlined),
              ),
      
              // Menu Icon
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
