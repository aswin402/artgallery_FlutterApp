import 'package:flutter/material.dart';
import '../../core/theme/app_text.dart';
import '../../core/theme/theme_x.dart';
import '../../core/widgets/team_member_card.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

  static const teamMembers = [
    {
      'name': 'John Doe',
      'title': 'Founder & CEO',
      'image':
          'https://images.pexels.com/photos/3785079/pexels-photo-3785079.jpeg',
    },
    {
      'name': 'Jane Doe',
      'title': 'Engineering Manager',
      'image':
          'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg',
    },
    {
      'name': 'Bob Smith',
      'title': 'Product Manager',
      'image':
          'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg',
    },
    {
      'name': 'Peter Johnson',
      'title': 'Frontend Developer',
      'image':
          'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg',
    },
    {
      'name': 'David Lee',
      'title': 'Backend Developer',
      'image':
          'https://images.pexels.com/photos/2182970/pexels-photo-2182970.jpeg',
    },
    {
      'name': 'Sarah Williams',
      'title': 'Product Designer',
      'image':
          'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg',
    },
    {
      'name': 'Michael Brown',
      'title': 'UX Researcher',
      'image':
          'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg',
    },
    {
      'name': 'Elizabeth Johnson',
      'title': 'Customer Success',
      'image':
          'https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 40, 10, 2),
      width: double.infinity,
      color: context.colors.background,
      child: Column(
        children: [
          /// Hiring label
          Text(
            "WE'RE HIRING!",
            style: AppText.muted(context).copyWith(
              letterSpacing: 1.2,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 12),

          /// Title
          Text(
            'Meet Our Team',
            textAlign: TextAlign.center,
            style: AppText.h1(context).copyWith(fontSize: 28),
          ),

          const SizedBox(height: 12),

          /// Subtitle
          Text(
            'Our philosophy is simple — hire a team of diverse, passionate people and foster a culture that empowers you to do your best work.',
            textAlign: TextAlign.center,
            style: AppText.body(context).copyWith(
              color: context.colors.mutedForeground,
            ),
          ),

          const SizedBox(height: 40),

          /// Team grid
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: teamMembers.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Android friendly
              mainAxisSpacing: 12,
              crossAxisSpacing: 14,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final member = teamMembers[index];
              return TeamMemberCard(
                name: member['name']!,
                title: member['title']!,
                imageUrl: member['image']!,
              );
            },
          ),
        ],
      ),
    );
  }
}
