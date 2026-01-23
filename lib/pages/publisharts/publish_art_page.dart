import 'package:artgallery/core/theme/app_text.dart';
import 'package:artgallery/core/theme/theme_x.dart';
import 'package:artgallery/core/widgets/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../api/services/art_upload_service.dart';

class PublishArtPage extends StatefulWidget {
  const PublishArtPage({super.key});

  @override
  State<PublishArtPage> createState() => _PublishArtPageState();
}

class _PublishArtPageState extends State<PublishArtPage> {
  final _formKey = GlobalKey<FormState>();

  final _artNameCtrl = TextEditingController();
  final _artistCtrl = TextEditingController();
  final _priceCtrl = TextEditingController();
  final _descCtrl = TextEditingController();

  XFile? _image;
  bool _loading = false;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => _image = picked);
    }
  }

  Future<void> upload() async {
    if (!_formKey.currentState!.validate() || _image == null) {
      AppToast.error(context, 'Fill all fields & select image');
      return;
    }

    setState(() => _loading = true);

    try {
      await ArtUploadService.uploadArt(
        artName: _artNameCtrl.text,
        artist: _artistCtrl.text,
        price: int.parse(_priceCtrl.text),
        description: _descCtrl.text,
        imageFile: _image!,
      );

      if (!mounted) return;
      AppToast.success(context, 'Art uploaded successfully');

      Navigator.pop(context);
    } catch (e) {
      if (!mounted) return;
      AppToast.error(context, e.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        constraints: const BoxConstraints(maxWidth: 500),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: context.colors.card,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: context.colors.border),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 Text(
                  'Upload New Art',
                  style: AppText.h2(context).copyWith(fontSize: 20),
                ),
                const SizedBox(height: 16),

                _input(_artNameCtrl, 'Art Name'),
                _input(_artistCtrl, 'Artist Name'),
                _input(_priceCtrl, 'Price', isNumber: true),
                _input(_descCtrl, 'Description', maxLines: 3),

                const SizedBox(height: 12),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: pickImage,
                    child: Text(
                      _image == null ? 'Browse… No file selected' : 'Image selected',
                      style:  TextStyle(color: context.colors.input),
                    ),
                  ),
                ),

                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _loading ? null : upload,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: _loading
                        ? const CircularProgressIndicator(color: Colors.black)
                        : Text(
                            'Upload Art',
                            style: AppText.body(context).copyWith(
                              color: Colors.black,),
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
    TextEditingController ctrl,
    String hint, {
    bool isNumber = false,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: ctrl,
        maxLines: maxLines,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        validator: (v) => v == null || v.isEmpty ? 'Required' : null,
        style: TextStyle(color: context.colors.input),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle:  TextStyle(color: context.colors.muted),
          filled: true,
          fillColor: context.colors.inputField,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: context.colors.border),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: context.colors.border),
          ),
        ),
      ),
    );
  }
}
