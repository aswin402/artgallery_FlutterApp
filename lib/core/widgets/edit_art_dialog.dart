import 'package:flutter/material.dart';
import '../../api/models/art.dart';
import '../theme/app_text.dart';
import '../theme/theme_x.dart';

class EditArtDialog extends StatefulWidget {
  final Art art;
  final Future<void> Function(Art updatedArt) onSubmit;

  const EditArtDialog({
    super.key,
    required this.art,
    required this.onSubmit,
  });

  @override
  State<EditArtDialog> createState() => _EditArtDialogState();
}

class _EditArtDialogState extends State<EditArtDialog> {
  late final TextEditingController _nameCtrl;
  late final TextEditingController _artistCtrl;
  late final TextEditingController _priceCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.art.artname);
    _artistCtrl = TextEditingController(text: widget.art.artist);
    _priceCtrl =
        TextEditingController(text: widget.art.price.toString());
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _artistCtrl.dispose();
    _priceCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: context.colors.background,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Edit Art', style: AppText.h1(context)),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),

              const SizedBox(height: 16),

              _input(
                context,
                label: 'Art Name',
                controller: _nameCtrl,
              ),
              _input(
                context,
                label: 'Artist',
                controller: _artistCtrl,
              ),
              _input(
                context,
                label: 'Price',
                controller: _priceCtrl,
                keyboardType: TextInputType.number,
              ),

              const SizedBox(height: 20),

              /// DONE BUTTON
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.colors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () async {
                    final updatedArt = widget.art.copyWith(
                      artname: _nameCtrl.text.trim(),
                      artist: _artistCtrl.text.trim(),
                      price: int.parse(_priceCtrl.text),
                    );

                    await widget.onSubmit(updatedArt);
                  },
                  child: Text(
                    'Done',
                    style: AppText.btnMuted(context).copyWith(
                      color: context.colors.background,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              /// CANCEL BUTTON
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: context.colors.fontcolor,
                    side: BorderSide(color: context.colors.border),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Cancel',
                    style: AppText.body(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _input(
    BuildContext context, {
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppText.mono(context)),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            keyboardType: keyboardType,
            style: AppText.body(context),
            decoration: InputDecoration(
              filled: true,
              fillColor: context.colors.inputField,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
