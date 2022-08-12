import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/domain/repositories/wish_list_repository.dart';

@lazySingleton
class AddProductToWishList implements UseCase<bool, AddToWishListParams> {
  final WishListRepository repository;

  AddProductToWishList(this.repository);

  @override
  Future<Either<Failure, bool>> call(AddToWishListParams params) async {
    return await repository.addToWishList(
        wishListProduct: params.wishListProduct);
  }
}

class AddToWishListParams extends Equatable {
  final WishListProduct wishListProduct;
  const AddToWishListParams({required this.wishListProduct});

  @override
  List<Object?> get props => [wishListProduct];
}
