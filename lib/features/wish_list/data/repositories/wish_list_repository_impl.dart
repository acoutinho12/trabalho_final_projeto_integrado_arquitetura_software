import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/exceptions.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/features/wish_list/data/datasources/wish_list_local_datasource.dart';
import 'package:ollen/features/wish_list/data/models/wish_list_product_model.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/domain/repositories/wish_list_repository.dart';

@LazySingleton(as: WishListRepository)
class WishListRepositoryImpl extends WishListRepository {
  final WishListLocalDataSource remoteDataSource;

  WishListRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, WishListProducts>> getAllProducts() async {
    try {
      final remoteProducts = await remoteDataSource.getWishListProducts();
      return Right(remoteProducts);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> addToWishList(
      {required WishListProduct wishListProduct}) async {
    try {
      final WishListProductModel wishListProductModel =
          WishListProductModel.wishListProductToWishListProductModel(
              wishListProduct);
      final remoteData = await remoteDataSource.addToWishList(
          wishListProduct: wishListProductModel);
      return Right(remoteData);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<int>>> getWishListProductsId() async {
    try {
      final remoteIds = await remoteDataSource.getWishListProductsId();
      return Right(remoteIds);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
