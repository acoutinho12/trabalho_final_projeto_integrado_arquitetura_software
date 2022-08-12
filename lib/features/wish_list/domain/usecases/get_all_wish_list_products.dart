import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/domain/repositories/wish_list_repository.dart';

@lazySingleton
class GetAllWishListProducts implements UseCase<WishListProducts, NoParams> {
  final WishListRepository repository;

  GetAllWishListProducts(this.repository);

  @override
  Future<Either<Failure, WishListProducts>> call(NoParams params) async {
    return await repository.getAllProducts();
  }
}
