import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:ollen/core/features/cart/data/model/cart_product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CartLocalDataSource {
  Future<CartProductsModel> getCartProducts();
  Future<void> cacheCart(CartProductModel product);
  Future<CartProductsModel> removeFromCart(CartProductModel product);
  Future<void> changeProductQuantity(CartProductModel product);
  Future<String> getTotalProductsQuantityOnCart();
  Future<String> getTotalPrice();
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
    if (productsToCache.any((p) => p.id == product.id)) {
      productsToCache =
          _changeProductQuantity(productsToCache, product.id, product.quantity);
    } else {
      productsToCache.add(product);
    }

    _cacheProduct(productsToCache);
  }

  @override
  Future<CartProductsModel> removeFromCart(CartProductModel product) async {
    CartProductsModel productsToCache = _getProductsToCache();
    productsToCache.removeWhere((p) => product.id == p.id);
    _cacheProduct(productsToCache);
    return productsToCache;
  }

  @override
  Future<void> changeProductQuantity(CartProductModel product) async {
    CartProductsModel productsToCache = _getProductsToCache();
    int index =
        productsToCache.indexWhere((element) => element.id == product.id);
    int quantity = product.quantity - productsToCache[index].quantity;
    productsToCache =
        _changeProductQuantity(productsToCache, product.id, quantity);
    _cacheProduct(productsToCache);
  }

  @override
  Future<String> getTotalProductsQuantityOnCart() async {
    CartProductsModel productsToCache = _getProductsToCache();
    final int total = productsToCache.isNotEmpty
        ? productsToCache.map((item) => item.quantity).reduce((a, b) => a + b)
        : 0;
    return total.toString();
  }

  @override
  Future<String> getTotalPrice() async {
    CartProductsModel productsToCache = _getProductsToCache();
    final double total = productsToCache.isNotEmpty
        ? productsToCache
            .map((item) => (item.quantity.toDouble() *
                double.parse(item.price.split(' ')[1])))
            .reduce((a, b) => a + b)
        : 0;
    final String totalPrice = total.toString();
    final String currency = productsToCache.isNotEmpty
        ? productsToCache[0].price.split(' ')[0]
        : "R\$";
    return "$currency $totalPrice";
  }

  /////////////////////////////// Private ///////////////////////////////////////
  CartProductModel _productWithNewQuantity(
          int quantity, CartProductModel oldProduct) =>
      CartProductModel(
          id: oldProduct.id,
          name: oldProduct.name,
          description: oldProduct.description,
          imageUrl: oldProduct.imageUrl,
          price: oldProduct.price,
          quantity: quantity + oldProduct.quantity);

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

  void _cacheProduct(CartProductsModel productsToCache) {
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

  CartProductsModel _changeProductQuantity(
      CartProductsModel productsToCache, int id, int quantity) {
    int index = productsToCache.indexWhere((element) => element.id == id);
    CartProductModel productWithNewQuantity =
        _productWithNewQuantity(quantity, productsToCache[index]);
    productsToCache[index] = productWithNewQuantity;
    return productsToCache;
  }

  /////////////////////////////// Private ///////////////////////////////////////
}
