class CreateCartModel {
  final String userId;
  final String? productId;
  final int count;

  CreateCartModel({
    required this.userId,
    required this.productId,
    required this.count,
  });

  CreateCartModel.fromJSON(Map<String, dynamic> json)
    : userId = json["user_id"],
      productId = json["product_id"],
      count = json["count"];

  Map<String, dynamic> toJSON() => {
    "user_id": userId,
    "product_id": productId,
    "count": count,
  };
}

class CartModel extends CreateCartModel {
  final String id;

  CartModel({
    required this.id,
    required super.userId,
    required super.productId,
    required super.count,
  });

  CartModel.fromJSON(Map<String, dynamic> json)
    : id = json["id"],
      super(
        userId: json["user_id"],
        productId: json["product_id"],
        count: json["count"],
      );
}
