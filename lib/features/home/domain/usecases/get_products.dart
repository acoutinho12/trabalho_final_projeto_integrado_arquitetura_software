import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/domain/repositories/product_repository.dart';

import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';

@lazySingleton
class GetProducts implements UseCase<Products, NoParams> {
  final ProductRepository repository;

  GetProducts(this.repository);

  @override
  Future<Either<Failure, Products>> call(NoParams params) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    return await repository.getProducts();
  }
}
