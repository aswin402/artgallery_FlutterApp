import 'package:flutter/material.dart';
import '../theme/app_text.dart';
import '../theme/theme_x.dart';

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String title;
  final String imageUrl;

  const TeamMemberCard({
    super.key,
    required this.name,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Avatar
        CircleAvatar(
          radius: 40,
          backgroundColor: context.colors.secondary,
          backgroundImage: NetworkImage(imageUrl),
        ),

        const SizedBox(height: 12),

        /// Name
        Text(
          name,
          textAlign: TextAlign.center,
          style: AppText.h2(context).copyWith(fontSize: 16),
        ),

        const SizedBox(height: 4),

        /// Role
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppText.muted(context),
        ),
      ],
    );
  }
}
