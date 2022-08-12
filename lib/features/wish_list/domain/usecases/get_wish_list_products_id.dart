import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/wish_list/domain/repositories/wish_list_repository.dart';

@lazySingleton
class GetWishListProductsId implements UseCase<List<int>, NoParams> {
  final WishListRepository repository;

  GetWishListProductsId(this.repository);

  @override
  Future<Either<Failure, List<int>>> call(NoParams params) async {
    return await repository.getWishListProductsId();
  }
}
