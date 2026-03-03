class Product {
  final int id;
  final String title;
  final String slug;
  final double price;
  final String description;

  Product({
    required this.id,
    required this.title,
    required this.slug,
    required this.price,
    required this.description,
  });

  factory Product.fromJson( Map<String, dynamic> json) =>
    Product(
      id: json["id"] ?? 0, 
      title: json["title"] ?? 'Not title', 
      slug: json["slug"] ?? 'Not slug', 
      price: json["price"] ?? 0.0, 
      description: json["description"] ?? 'Not description'
      );
}
