import 'dart:convert';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';

typedef CartProductsModel = List<CartProductModel>;

class CartProductModel extends CartProduct {
  const CartProductModel({
    required int id,
    required String name,
    required String description,
    required String imageUrl,
    required String price,
    required int quantity,
  }) : super(
            id: id,
            name: name,
            description: description,
            imageUrl: imageUrl,
            price: price,
            quantity: quantity);

  factory CartProductModel.fromJson(Map<String, dynamic> json) => CartProductModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        imageUrl: json["image_url"],
        price: json["price"],
        quantity: json["quantity"]
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image_url": imageUrl,
        "price": price,
        "quantity": quantity,
      };
  static CartProductsModel cartProductsFromJson(String str) =>
      CartProductsModel.from(json.decode(str).map((x) => CartProductModel.fromJson(x)));

  static String cartProductsToJson(CartProductsModel data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}
