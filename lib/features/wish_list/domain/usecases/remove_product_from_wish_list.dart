import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/domain/repositories/wish_list_repository.dart';

@lazySingleton
class RemoveProductFromWishList
    implements UseCase<void, RemoveProductFromWishListParams> {
  final WishListRepository repository;

  RemoveProductFromWishList(this.repository);

  @override
  Future<Either<Failure, void>> call(
      RemoveProductFromWishListParams params) async {
    return await repository.removeFromWishList(
        wishListProduct: params.wishListProduct);
  }
}

class RemoveProductFromWishListParams extends Equatable {
  final WishListProduct wishListProduct;
  const RemoveProductFromWishListParams({required this.wishListProduct});

  @override
  List<Object?> get props => [wishListProduct];
}
