import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../config/env.dart';
import '../models/art.dart';

class ArtService {
  static final String baseUrl = Env.apiUrl;


  /// GET all arts
  static Future<List<Art>> getAllArts() async {
    try {
      final res = await http.get(Uri.parse('$baseUrl/art')).timeout(const Duration(seconds: 10));
      if (res.statusCode < 200 || res.statusCode >= 300) {
        throw Exception('Failed to fetch arts: ${res.statusCode}');
      }
      final decoded = jsonDecode(res.body);
      if (decoded is! List) {
        throw Exception('Expected list of arts but got: ${decoded.runtimeType}');
      }
      return decoded.map((e) => Art.fromJson(e as Map<String, dynamic>)).toList();
    } catch (error) {
      debugPrint('API error in getAllArts: $error');
      rethrow;
    } finally {
      debugPrint('API URL: $baseUrl/art');
    }
  }

  /// GET art by ID
  static Future<Art> getArtById(int id) async {
    try {
      final res = await http.get(Uri.parse('$baseUrl/art/$id')).timeout(const Duration(seconds: 10));
      if (res.statusCode < 200 || res.statusCode >= 300) {
        throw Exception('Failed to fetch art: ${res.statusCode}');
      }
      return Art.fromJson(jsonDecode(res.body) as Map<String, dynamic>);
    } catch (e) {
      debugPrint('API error in getArtById: $e');
      rethrow;
    } finally {
      debugPrint('API URL: $baseUrl/art/$id');
    }
  }

  /// DELETE art
  static Future<void> deleteArt(int id) async {
    try {
      final res = await http.delete(Uri.parse('$baseUrl/art/$id')).timeout(const Duration(seconds: 10));
      if (res.statusCode < 200 || res.statusCode >= 300) {
        final data = jsonDecode(res.body);
        throw Exception(data['message'] ?? 'Delete failed: ${res.statusCode}');
      }
    } catch (e) {
      debugPrint('API error in deleteArt: $e');
      rethrow;
    } finally {
      debugPrint('API URL: $baseUrl/art/$id');
    }
  }

  /// UPDATE art
  static Future<Art> updateArt(Art art) async {
    try {
      final res = await http.put(
        Uri.parse('$baseUrl/art/${art.id}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(art.toJson()),
      ).timeout(const Duration(seconds: 10));
      if (res.statusCode < 200 || res.statusCode >= 300) {
        throw Exception('Failed to update art: ${res.statusCode}');
      }
      return Art.fromJson(jsonDecode(res.body) as Map<String, dynamic>);
    } catch (e) {
      debugPrint('API error in updateArt: $e');
      rethrow;
    } finally {
      debugPrint('API URL: $baseUrl/art/${art.id}');
    }
  }
}
