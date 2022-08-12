import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/exceptions.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/features/cart/data/datasource/cart_local_data_source.dart';
import 'package:ollen/features/cart/data/model/cart_product_model.dart';
import 'package:ollen/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/features/cart/domain/repositories/cart_repository.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartLocalDataSource remoteDataSource;

  CartRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, CartProducts>> getCartProducts() async {
    try {
      final remoteProducts = await remoteDataSource.getCartProducts();
      return Right(remoteProducts);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> addToCart(CartProductModel product) async {
    try {
      await remoteDataSource.cacheCart(product);
      return const Right(null);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CartProducts>> removeFromCart(
      CartProductModel product) async {
    try {
      final remoteData = await remoteDataSource.removeFromCart(product);
      return Right(remoteData);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> changeProductQuantity(
      CartProductModel product) async {
    try {
      await remoteDataSource.changeProductQuantity(product);
      return const Right(null);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getTotalProductsQuantityOnCart() async {
    try {
      final total = await remoteDataSource.getTotalProductsQuantityOnCart();
      return Right(total);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getTotalPrice() async {
    try {
      final total = await remoteDataSource.getTotalPrice();
      return Right(total);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
