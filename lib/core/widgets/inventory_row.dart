import 'package:flutter/material.dart';
import '../../api/models/art.dart';
import '../theme/app_text.dart';
import '../theme/theme_x.dart';
import 'inventory_action_button.dart';

class InventoryRow extends StatelessWidget {
  final Art art;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const InventoryRow({
    super.key,
    required this.art,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: context.colors.border),
        ),
      ),
      child: Row(
        children: [
          _cell(context, art.id.toString(), flex: 1),
          _cell(context, art.artname, flex: 3),
          _cell(context, art.artist, flex: 3),
          _cell(context, '₹${art.price}', flex: 2),

          Expanded(
            flex: 3,
            child: Wrap(
              spacing: 8,
              runSpacing: 4,
              children: [
                InventoryActionButton(
                  text: 'Edit',
                  color: context.colors.fontcolor,
                  onTap: onEdit,
                ),
                InventoryActionButton(
                  text: 'Delete',
                  color: Colors.redAccent,
                  onTap: onDelete,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _cell(BuildContext context, String text, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        style: AppText.body(context).copyWith(
          color: context.colors.fontcolor,),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
