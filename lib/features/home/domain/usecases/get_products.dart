import 'package:dartz/dartz.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/domain/repositories/product_repository.dart';

import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';

class GetProducts implements UseCase<Products, NoParams> {
  final ProductRepository repository;

  GetProducts(this.repository);

  @override
  Future<Either<Failure, Products>> call(NoParams params) async {
    return await repository.getProducts();
  }
}