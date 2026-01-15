class Art {
  final int id;
  final String artname;
  final String artist;
  final double price;
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
    return Art(
      id: json['id'],
      artname: json['artname'],
      artist: json['artist'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
      imageUrl: json['imageUrl'],
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
}
