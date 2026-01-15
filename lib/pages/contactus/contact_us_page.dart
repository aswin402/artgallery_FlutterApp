import 'package:artgallery/core/theme/app_text.dart';
import 'package:flutter/material.dart';
import '../../core/theme/theme_x.dart';
import 'contact_item.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text(
                "CONTACT US",
                style: AppText.muted(context).copyWith(
                  color: context.colors.fontcolorprimary,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 12),
               Text(
                "Get In Touch",
                style: AppText.h2(context).copyWith(
                  color: context.colors.fontcolor,
                )
              ),
              const SizedBox(height: 8),
               Text(
                "Our friendly team is always here to chat.",
                style: AppText.muted(context).copyWith(
                  color: context.colors.fontcolorprimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),

              ContactItem(
                icon: Icons.email_outlined,
                title: "Email",
                description: "Our friendly team is here to help.",
                value: "akashmoradiya344@gmail.com",
              ),

              const SizedBox(height: 40),

              ContactItem(
                icon: Icons.location_on_outlined,
                title: "Office",
                description: "Come say hello at our office HQ.",
                value: "100 Smith Street Collingwood\nVIC 3066 AU",
              ),

              const SizedBox(height: 40),

              ContactItem(
                icon: Icons.phone_outlined,
                title: "Phone",
                description: "Mon–Fri from 8am to 5pm.",
                value: "+1 (555) 000-0000",
              ),
            ],
          );
  }
  
}

