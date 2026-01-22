import 'package:flutter/material.dart';

import '../theme/app_text.dart';
import '../theme/theme_x.dart';
import 'nav_item.dart';

enum NavPage { home, arts, about, contact, publish, inventory }

class AppSideNavbar extends StatelessWidget {
  final NavPage activePage;
  final ValueChanged<NavPage> onNavigate;

  const AppSideNavbar({
    super.key,
    required this.activePage,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.colors.background,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// HEADER
              Row(
                children: [
                  Icon(Icons.brush, color: context.colors.primary),
                  const SizedBox(width: 8),
                  Text('artGallery', style: AppText.h3(context)),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              /// MENU ITEMS
              NavItem(
                title: 'Home',
                isActive: activePage == NavPage.home,
                onTap: () => onNavigate(NavPage.home),
              ),
              NavItem(
                title: 'Arts',
                isActive: activePage == NavPage.arts,
                onTap: () => onNavigate(NavPage.arts),
              ),
              NavItem(
                title: 'About',
                isActive: activePage == NavPage.about,
                onTap: () => onNavigate(NavPage.about),
              ),
              NavItem(
                title: 'Contact Us',
                isActive: activePage == NavPage.contact,
                onTap: () => onNavigate(NavPage.contact),
              ),
              NavItem(
                title: 'Publish Art',
                isActive: activePage == NavPage.publish,
                onTap: () => onNavigate(NavPage.publish),
              ),
              NavItem(
                title: 'Inventory',
                isActive: activePage == NavPage.inventory,
                onTap: () => onNavigate(NavPage.inventory),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
