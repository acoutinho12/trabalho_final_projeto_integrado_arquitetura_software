import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/features/cart/data/model/cart_product_model.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CartLocalDataSource {
  Future<CartProductsModel> getCartProducts();
  Future<void> cacheCart(CartProductModel product);
  Future<CartProductsModel> removeFromCart(CartProductModel product);
}

const cachedCart = 'CACHED_CART';

@LazySingleton(as: CartLocalDataSource)
class CartLocalDataSourceImpl implements CartLocalDataSource {
  final SharedPreferences sharedPreferences;

  CartLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<CartProductsModel> getCartProducts() async {
    CartProductsModel productsToCache = _getProductsToCache();
    return productsToCache;
  }

  @override
  Future<void> cacheCart(CartProductModel product) async {
    CartProductsModel productsToCache = _getProductsToCache();
    productsToCache.add(product);
    _cacheProduct(product, productsToCache);
  }

  CartProductsModel _getProductsToCache() {
    final jsonString = sharedPreferences.getString(cachedCart);
    CartProductsModel productsToCache = [];
    if (jsonString != null) {
      productsToCache = CartProductModel.cartProductsFromJson(jsonString);
      return productsToCache;
    } else {
      return [];
    }
  }

  void _cacheProduct(
      CartProductModel product, CartProductsModel productsToCache) {
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

  @override
  Future<CartProductsModel> removeFromCart(CartProductModel product) async {
    CartProductsModel productsToCache = _getProductsToCache();
    productsToCache.removeWhere((p) => product.id == p.id);
    sharedPreferences.setString(
      cachedCart,
      json.encode(productsToCache),
    );
    return productsToCache;
  }
}
