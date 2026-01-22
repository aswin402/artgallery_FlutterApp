import 'package:flutter/material.dart';

class AppToast {
  static void success(BuildContext context, String message) {
    _show(
      context,
      message,
      icon: Icons.check_circle,
      background: Colors.green.shade600,
    );
  }

  static void error(BuildContext context, String message) {
    _show(
      context,
      message,
      icon: Icons.error,
      background: Colors.red.shade600,
    );
  }

  static void info(BuildContext context, String message) {
    _show(
      context,
      message,
      icon: Icons.info,
      background: Colors.blue.shade600,
    );
  }

  static void _show(
    BuildContext context,
    String message, {
    required IconData icon,
    required Color background,
  }) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.clearSnackBars();

    messenger.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: background,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        content: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
