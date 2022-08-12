import 'package:dartz/dartz.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/features/cart/data/model/cart_product_model.dart';
import 'package:ollen/features/cart/domain/entities/cart_product.dart';

abstract class CartRepository {
  Future<Either<Failure, CartProducts>> getCartProducts();
  Future<Either<Failure, void>> addToCart(CartProductModel product);
  Future<Either<Failure, CartProducts>> removeFromCart(
      CartProductModel product);
  Future<Either<Failure, void>> changeProductQuantity(CartProductModel product);
  Future<Either<Failure, String>> getTotalProductsQuantityOnCart();
  Future<Either<Failure, String>> getTotalPrice();
}
