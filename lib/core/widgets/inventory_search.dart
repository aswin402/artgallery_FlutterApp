import 'package:flutter/material.dart';

import '../theme/theme_x.dart';

class InventorySearch extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const InventorySearch({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style:  TextStyle(color: context.colors.fontcolor),
      decoration: InputDecoration(
        hintText: 'Search by art name or artist...',
        hintStyle: TextStyle(color: context.colors.muted),
        filled: true,
        fillColor: context.colors.inputField,
        prefixIcon: Icon(Icons.search, color: context.colors.fontcolor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
