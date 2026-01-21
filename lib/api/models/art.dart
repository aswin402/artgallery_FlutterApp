import 'package:flutter/foundation.dart';
import '../../config/env.dart';

class Art {
  final int id;
  final String artname;
  final String artist;
  final int price;
  final String? description;
  final String? imageUrl;

  Art({
    required this.id,
    required this.artname,
    required this.artist,
    required this.price,
    this.description,
    this.imageUrl,
  });

  factory Art.fromJson(Map<String, dynamic> json) {
    final rawImageUrl = json['imageUrl'] as String?;

    if (kDebugMode) {
      debugPrint('RAW IMAGE URL => $rawImageUrl');
      debugPrint('IMAGE URL => ${Env.apiUrl}$rawImageUrl');
    }

    return Art(
      id: json['id'] is int ? json['id'] : int.tryParse(json['id']?.toString() ?? '0') ?? 0,
      artname: json['artname']?.toString() ?? '',
      artist: json['artist']?.toString() ?? '',
      price: json['price'] is num
          ? (json['price'] as num).toInt()
          : int.tryParse(json['price']?.toString() ?? '0') ?? 0,
      description: json['description']?.toString(),
      imageUrl: rawImageUrl != null ? (rawImageUrl.startsWith('http') ? rawImageUrl : '${Env.apiUrl}$rawImageUrl') : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "artname": artname,
      "artist": artist,
      "price": price,
      "description": description,
      "imageUrl": imageUrl,
    };
  }
   Art copyWith({
    int? id,
    String? artname,
    String? artist,
    int? price,
  }) {
    return Art(
      id: id ?? this.id,
      artname: artname ?? this.artname,
      artist: artist ?? this.artist,
      price: price ?? this.price,
    );
  }
}
