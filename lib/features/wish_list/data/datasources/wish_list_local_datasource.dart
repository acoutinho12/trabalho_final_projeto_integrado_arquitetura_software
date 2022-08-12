import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:ollen/features/wish_list/data/models/wish_list_product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class WishListLocalDataSource {
  Future<WishListProductsModel> getWishListProducts();
  Future<bool> addToWishList({required WishListProductModel wishListProduct});
  Future<List<int>> getWishListProductsId();
}

const wishList = 'WISH_LIST';

@LazySingleton(as: WishListLocalDataSource)
class WishListLocalDataSourceImpl implements WishListLocalDataSource {
  final SharedPreferences sharedPreferences;

  WishListLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<WishListProductsModel> getWishListProducts() async {
    WishListProductsModel wishListProducts = _getWishListProducts();
    return wishListProducts;
  }

  @override
  Future<bool> addToWishList(
      {required WishListProductModel wishListProduct}) async {
    WishListProductsModel wishListProducts = _getWishListProducts();
    if (!wishListProducts.any((p) => p.id == wishListProduct.id)) {
      wishListProducts.add(wishListProduct);
      _addToWishList(wishListProducts);
      return true;
    } else {
      wishListProducts.remove(wishListProduct);
      _removeFromWishList(wishListProducts);
      return false;
    }
  }

  @override
  Future<List<int>> getWishListProductsId() async {
    WishListProductsModel wishListProducts = _getWishListProducts();
    List<int> wishListProductsId = wishListProducts.map((e) => e.id).toList();
    return wishListProductsId;
  }

/////////////////////////////// Private ///////////////////////////////////////
  WishListProductsModel _getWishListProducts() {
    final jsonString = sharedPreferences.getString(wishList);
    WishListProductsModel wishListProducts = [];
    if (jsonString != null) {
      wishListProducts =
          WishListProductModel.wishListProductsFromJson(jsonString);
      return wishListProducts;
    } else {
      return [];
    }
  }

  void _addToWishList(WishListProductsModel wishListProducts) {
    String jsonProducts = "[";
    wishListProducts.asMap().forEach((index, product) {
      jsonProducts = "$jsonProducts${json.encode(product.toJson())}";
      if (index != wishListProducts.length - 1) jsonProducts += ",";
    });

    jsonProducts += "]";
    sharedPreferences.setString(
      wishList,
      jsonProducts,
    );
  }

  void _removeFromWishList(WishListProductsModel wishListProducts) {
    String jsonProducts = "[";
    wishListProducts.asMap().forEach((index, product) {
      jsonProducts = "$jsonProducts${json.encode(product.toJson())}";
      if (index != wishListProducts.length - 1) jsonProducts += ",";
    });

    jsonProducts += "]";
    sharedPreferences.setString(
      wishList,
      jsonProducts,
    );
  }
  /////////////////////////////// Private ///////////////////////////////////////

}
