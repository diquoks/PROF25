class ProductModel {
  final String approximateCost;
  final String description;
  final String id;
  final int price;
  final String title;
  final String type;
  final String typeCloses;

  ProductModel({
    required this.approximateCost,
    required this.description,
    required this.id,
    required this.price,
    required this.title,
    required this.type,
    required this.typeCloses,
  });

  ProductModel.fromJSON(Map<String, dynamic> json)
    : approximateCost = json["approximate_cost"],
      description = json["description"],
      id = json["id"],
      price = json["price"],
      title = json["title"],
      type = json["type"],
      typeCloses = json["typeCloses"];
}
