import 'dart:io';
import 'package:http/http.dart' as http;
import '../../config/env.dart';

class ArtUploadService {
  static final String baseUrl = Env.apiUrl;

  static Future<void> uploadArt({
    required String artName,
    required String artist,
    required int price,
    String? description,
    required imageFile,
  }) async {
    final uri = Uri.parse('$baseUrl/art');
  
    final request = http.MultipartRequest('POST', uri)
      ..fields['artname'] = artName   // backend key stays same
      ..fields['artist'] = artist
      ..fields['price'] = price.toString()
      ..fields['description'] = description??'this is a description'
      ..files.add(
        await http.MultipartFile.fromPath(
          'image',
          imageFile.path,
        ),
      );
  
    final response = await request.send();
  
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw Exception('Upload failed: ${response.statusCode}');
    }
  }

}
