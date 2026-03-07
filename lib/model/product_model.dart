class ProductModel {
  final int id;
  final String title;
  final String slug;
  final double price;
  final String description;

  ProductModel({
    required this.id,
    required this.title,
    required this.slug,
    required this.price,
    required this.description,
  });

  factory ProductModel.fromJson( Map<String, dynamic> json) =>
    ProductModel(
      id: json["id"] ?? 0, 
      title: json["title"] ?? 'Not title', 
      slug: json["slug"] ?? 'Not slug', 
      price: json["price"]?.toDouble() ?? 0.0, 
      description: json["description"] ?? 'Not description'
      );
}
