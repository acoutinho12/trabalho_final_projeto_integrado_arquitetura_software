import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/exceptions.dart';
import 'package:ollen/features/home/data/datasources/product_remote_datasource.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ollen/features/home/domain/repositories/product_repository.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, Products>> getProducts() async {
    try {
        final remoteProducts = await remoteDataSource.getProducts();
        return Right(remoteProducts);
      } on ServerException {
        return Left(ServerFailure());
      }
  }
}