import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:ollen/features/home/data/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CartLocalDataSource {
  Future<ProductsModel> getCartProducts();
  Future<void> cacheCart(ProductModel product);
}

const cachedCart = 'CACHED_CART';

@LazySingleton(as: CartLocalDataSource)
class CartLocalDataSourceImpl implements CartLocalDataSource {
  final SharedPreferences sharedPreferences;

  CartLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<ProductsModel> getCartProducts() async {
    ProductsModel productsToCache = _getProductsToCache();
    return productsToCache;
  }

  @override
  Future<void> cacheCart(ProductModel product) async {
    ProductsModel productsToCache = _getProductsToCache();
    productsToCache.add(product);
    _cacheProduct(product, productsToCache);
  }

  ProductsModel _getProductsToCache() {
    final jsonString = sharedPreferences.getString(cachedCart);
    ProductsModel productsToCache = [];
    if (jsonString != null) {
      productsToCache = ProductModel.productsFromJson(jsonString);
      return productsToCache;
    } else {
      return [];
    }
  }

  void _cacheProduct(ProductModel product, ProductsModel productsToCache) {
    String jsonProducts = "[";
    productsToCache.asMap().forEach((index, product) {
      jsonProducts = "$jsonProducts${json.encode(product.toJson())}";
      if (index != productsToCache.length - 1) jsonProducts += ",";
    });

    jsonProducts += "]";
    sharedPreferences.setString(
      cachedCart,
      jsonProducts,
    );
  }
}
