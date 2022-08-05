import 'package:dartz/dartz.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, Products>> getProducts();
}