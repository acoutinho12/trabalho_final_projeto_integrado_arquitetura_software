import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/cart/data/model/cart_product_model.dart';
import 'package:ollen/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class ChangeProductCartQuantity
    implements UseCase<void, ChangeProductCartQuantityParams> {
  final CartRepository repository;

  ChangeProductCartQuantity(this.repository);

  @override
  Future<Either<Failure, void>> call(
      ChangeProductCartQuantityParams params) async {
    return await repository.changeProductQuantity(params.product);
  }
}

class ChangeProductCartQuantityParams extends Equatable {
  final CartProductModel product;
  const ChangeProductCartQuantityParams({required this.product});

  @override
  List<Object?> get props => [product];
}
