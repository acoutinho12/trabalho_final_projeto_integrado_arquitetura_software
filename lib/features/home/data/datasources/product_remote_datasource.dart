import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ollen/features/home/data/models/product_model.dart';

import 'package:ollen/core/error/exceptions.dart';

abstract class ProductRemoteDataSource {
  Future<ProductsModel> getProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSourceImpl({required this.client});

  @override
  Future<ProductsModel> getProducts() async {
    final Uri uri = Uri.file('mocks/products.json');
    final response = await client.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return ProductModel.toProductModelList(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
