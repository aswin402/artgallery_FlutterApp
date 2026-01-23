import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';
import '../../config/env.dart';

class ArtUploadService {
  static final String baseUrl = Env.apiUrl;

  static Future<void> uploadArt({
    required String artName,
    required String artist,
    required int price,
    String? description,
    required XFile imageFile,
  }) async {
    final uri = Uri.parse('$baseUrl/art');
  
    final request = http.MultipartRequest('POST', uri)
      ..fields['artname'] = artName   // backend key stays same
      ..fields['artist'] = artist
      ..fields['price'] = price.toString()
      ..fields['description'] = description??'this is a description';

    if (kIsWeb) {
      final bytes = await imageFile.readAsBytes();
      request.files.add(
        http.MultipartFile.fromBytes(
          'image',
          bytes,
          filename: imageFile.name,
        ),
      );
    } else {
      request.files.add(
        await http.MultipartFile.fromPath(
          'image',
          imageFile.path,
        ),
      );
    }
  
    final response = await request.send().timeout(const Duration(seconds: 30));
  
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw Exception('Upload failed: ${response.statusCode}');
    }
  }

}
