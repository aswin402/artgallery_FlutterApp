import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../config/env.dart';
import '../models/art.dart';

class ArtService {
 static final String baseUrl = Env.apiUrl;

  /// GET all arts
  static Future<List<Art>> getAllArts() async {
    final res = await http.get(Uri.parse('$baseUrl/art'));

    if (res.statusCode != 200) {
      throw Exception('Failed to fetch arts');
    }

    final List data = jsonDecode(res.body);
    return data.map((e) => Art.fromJson(e)).toList();
  }

  /// GET art by ID
  static Future<Art> getArtById(int id) async {
    final res = await http.get(Uri.parse('$baseUrl/art/$id'));

    if (res.statusCode != 200) {
      throw Exception('Failed to fetch art');
    }

    return Art.fromJson(jsonDecode(res.body));
  }

  /// DELETE art
  static Future<void> deleteArt(int id) async {
    final res = await http.delete(Uri.parse('$baseUrl/art/$id'));

    if (res.statusCode != 200) {
      final data = jsonDecode(res.body);
      throw Exception(data['message'] ?? 'Delete failed');
    }
  }

  /// UPDATE art
  static Future<Art> updateArt(Art art) async {
    final res = await http.put(
      Uri.parse('$baseUrl/art/${art.id}'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(art.toJson()),
    );

    if (res.statusCode != 200) {
      throw Exception('Failed to update art');
    }

    return Art.fromJson(jsonDecode(res.body));
  }
}
