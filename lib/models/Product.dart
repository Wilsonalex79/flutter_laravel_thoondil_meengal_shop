class Product {
  int id;
  String name;
  int price;
  String unit;

  // Constructor
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.unit,
  });

  // Named constructor for creating an instance from a JSON map
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,    // Provide a default value (e.g., 0) if id is null
      name: json['name'] ?? '', // Provide an empty string if name is null
      price: json['price'] != null ? json['price'] as int : 0, // Default price to 0 if null
      unit: json['unit'] ?? '', // Provide an empty string if unit is null
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'unit': unit,
    };
  }
}
