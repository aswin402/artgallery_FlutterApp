import 'package:artgallery/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import '../theme/app_text.dart';
import '../theme/theme_x.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      decoration: BoxDecoration(
        color: context.colors.background,
        border: Border(
          top: BorderSide(color: context.colors.border),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo
          Row(
            children: [
              Icon(Icons.brush, color: context.colors.primary, size: 20),
              const SizedBox(width: 8),
              Text('artGallery', style: AppText.h2(context)),
            ],
          ),

          const SizedBox(height: 20),

          // Links
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              _FooterLink(text: 'Overview'),
              _FooterLink(text: 'Features'),
              _FooterLink(text: 'Pricing'),
              _FooterLink(text: 'Careers'),
              _FooterLink(text: 'Help'),
              _FooterLink(text: 'Privacy'),
            ],
          ),

          const SizedBox(height: 28),

          // Newsletter
          Text(
            'Stay up to date',
            style: AppText.h2(context).copyWith(fontSize: 16),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: AppText.muted(context).copyWith(color: context.colors.input),
                    filled: true,
                    fillColor: context.colors.inputField,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: context.colors.border),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              PrimaryButton(text: 'Subscribe',
               onPressed: () {},
                height: 40,),
            ],
          ),
        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String text;

  const _FooterLink({required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: AppText.muted(context).copyWith(
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
