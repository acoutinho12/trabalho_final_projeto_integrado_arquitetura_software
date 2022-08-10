import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/features/cart/data/model/cart_product_model.dart';
import 'package:ollen/core/features/cart/domain/repositories/cart_repository.dart';

import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';

@lazySingleton
class AddToCartProducts implements UseCase<void, ProductCartParams> {
  final CartRepository repository;

  AddToCartProducts(this.repository);

  @override
  Future<Either<Failure, void>> call(ProductCartParams params) async {
    return await repository.addToCart(params.product);
  }
}

class ProductCartParams extends Equatable {
  final CartProductModel product;
  const ProductCartParams({required this.product});

  @override
  List<Object?> get props => [product];
}
