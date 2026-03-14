class ProductModel {
  int id;
  String slug;
  String title;
  String description;
  double price;

  ProductModel({
    required this.id,
    required this.slug,
    required this.title,
    required this.description,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"] ?? 0,
    title: json["title"] ?? 'not title',
    slug: json["slug"] ?? 'not slug',
    price: json["price"]?.toDouble() ?? 0.0,
    description: json["description"] ?? 'not description',
  );
}
