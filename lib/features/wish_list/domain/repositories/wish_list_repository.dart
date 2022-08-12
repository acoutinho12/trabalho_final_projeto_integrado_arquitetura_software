import 'package:dartz/dartz.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';

abstract class WishListRepository {
  Future<Either<Failure, WishListProducts>> getAllProducts();
  Future<Either<Failure, bool>> addToWishList(
      {required WishListProduct wishListProduct});
  Future<Either<Failure, List<int>>> getWishListProductsId();
}
