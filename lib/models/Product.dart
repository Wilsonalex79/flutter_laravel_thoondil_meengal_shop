class Product{
  int id;
  String name;
  String price;

  Product({
    required this.id,
    required this.name,
    required this.price
  });


  // Named constructor for creating an instance from a JSON map
  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        price = json['price'];

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price
    };
  }

}