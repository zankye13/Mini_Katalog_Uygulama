class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> specifications;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.specifications,
  });

  // JSON / Harita yapisindan nesne uretmek icin fabrika metodu (Deserialization)
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: (map['price'] ?? 0.0).toDouble(),
      imageUrl: map['imageUrl'] ?? '',
      specifications: List<String>.from(map['specifications'] ?? []),
    );
  }

  // Nesneyi harita yapısına donusturmek icin (Serialization)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'specifications': specifications,
    };
  }
}
