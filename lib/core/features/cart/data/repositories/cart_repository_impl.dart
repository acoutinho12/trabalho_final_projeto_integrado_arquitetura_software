import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/exceptions.dart';
import 'package:ollen/core/features/cart/data/datasource/cart_local_data_source.dart';
import 'package:ollen/core/features/cart/domain/repositories/cart_repository.dart';
import 'package:ollen/features/home/data/models/product_model.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:dartz/dartz.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartLocalDataSource remoteDataSource;

  CartRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, Products>> getCartProducts() async {
    try {
        final remoteProducts = await remoteDataSource.getCartProducts();
        return Right(remoteProducts);
      } on ServerException {
        return Left(ServerFailure());
      }
  }
  @override
  Future<Either<Failure, bool>> addToCart(ProductModel product) async {
    try {
        await remoteDataSource.cacheCart(product);
        return const Right(true);
      } on ServerException {
        return Left(ServerFailure());
      }
  }
}