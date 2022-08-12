import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class GetTotalPrice implements UseCase<String, NoParams> {
  late final CartRepository repository;

  GetTotalPrice(this.repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await repository.getTotalPrice();
  }
}
