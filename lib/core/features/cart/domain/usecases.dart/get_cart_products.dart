import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/features/cart/domain/repositories/cart_repository.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';

@lazySingleton
class GetCartProducts implements UseCase<Products, NoParams> {
  final CartRepository repository;

  GetCartProducts(this.repository);

  @override
  Future<Either<Failure, Products>> call(NoParams params) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return await repository.getCartProducts();
  }
}
