import 'package:dartz/dartz.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/features/home/data/models/product_model.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

abstract class CartRepository {
  Future<Either<Failure, Products>> getCartProducts();
  Future<Either<Failure, bool>> addToCart(ProductModel product);
}
