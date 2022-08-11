import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/features/cart/data/model/cart_product_model.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/domain/repositories/cart_repository.dart';

import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';

@lazySingleton
class RemoveFromCart implements UseCase<void, RemoveFromCartParams> {
  final CartRepository repository;

  RemoveFromCart(this.repository);

  @override
  Future<Either<Failure, CartProducts>> call(RemoveFromCartParams params) async {
    return await repository.removeFromCart(params.product);
  }
}

class RemoveFromCartParams extends Equatable {
  final CartProductModel product;
  const RemoveFromCartParams({required this.product});

  @override
  List<Object?> get props => [product];
}
