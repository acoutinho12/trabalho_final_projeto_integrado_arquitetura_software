import 'dart:convert';
import 'package:ollen/features/home/domain/entities/product.dart';

typedef ProductsModel = List<ProductModel>;

class ProductModel extends Product {
  const ProductModel({
    required int id,
    required String name,
    required String description,
    required String imageUrl,
    required String price,
  }) : super(id: id, name: name, description: description, imageUrl: imageUrl, price: price);

  factory ProductModel.fromJson(String str) => ProductModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        imageUrl: json["image_url"],
        price: json["price"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "image_url": imageUrl,
        "price": price,
      };
  static ProductsModel toProductModelList(Iterable iterable) => ProductsModel.from(iterable.map((model)=> ProductModel.fromJson(model)));
}
