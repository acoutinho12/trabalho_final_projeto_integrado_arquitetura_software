import 'dart:convert';

import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';

typedef WishListProductsModel = List<WishListProductModel>;

class WishListProductModel extends WishListProduct {
  const WishListProductModel(
      {required super.id,
      required super.name,
      required super.description,
      required super.imageUrl,
      required super.price});

  factory WishListProductModel.fromJson(Map<String, dynamic> json) =>
      WishListProductModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        imageUrl: json["image_url"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image_url": imageUrl,
        "price": price,
      };
  static WishListProductsModel wishListProductsFromJson(String str) =>
      WishListProductsModel.from(
          json.decode(str).map((x) => WishListProductModel.fromJson(x)));

  static String wishListProductsToJson(WishListProductsModel data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  factory WishListProductModel.wishListProductToWishListProductModel(
          WishListProduct wishListProduct) =>
      WishListProductModel(
          id: wishListProduct.id,
          name: wishListProduct.name,
          description: wishListProduct.description,
          imageUrl: wishListProduct.imageUrl,
          price: wishListProduct.price);

  static WishListProductsModel wishListProductsToWishListProductsModel(
          WishListProducts wishListProducts) =>
      WishListProductsModel.from(wishListProducts.map((e) =>
          WishListProductModel.wishListProductToWishListProductModel(e)));
}
