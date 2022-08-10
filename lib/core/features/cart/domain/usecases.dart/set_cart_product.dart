import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/features/cart/domain/repositories/cart_repository.dart';
import 'package:ollen/features/home/data/models/product_model.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';

@lazySingleton
class SetCartProducts implements UseCase<void, ProductCartParams> {
  final CartRepository repository;

  SetCartProducts(this.repository);

  @override
  Future<Either<Failure, void>> call(ProductCartParams params) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return await repository.addToCart(params.product as ProductModel);
  }
}

class ProductCartParams extends Equatable {
  final Product product;
  final int quantity;
  const ProductCartParams({required this.product, required this.quantity});

  @override
  List<Object?> get props => [product, quantity];
}
