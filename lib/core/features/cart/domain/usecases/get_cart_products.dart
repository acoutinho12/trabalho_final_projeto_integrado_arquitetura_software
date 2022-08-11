import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/domain/repositories/cart_repository.dart';
import 'package:ollen/core/usecases/usecase.dart';

@lazySingleton
class GetCartProducts implements UseCase<CartProducts, NoParams> {
  final CartRepository repository;

  GetCartProducts(this.repository);

  @override
  Future<Either<Failure, CartProducts>> call(NoParams params) async {
    return await repository.getCartProducts();
  }
}
