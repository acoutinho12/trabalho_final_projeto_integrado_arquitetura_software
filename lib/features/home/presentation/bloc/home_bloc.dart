import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/error/failures_messages.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/domain/usecases/get_products.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetProducts _getProducts;
  HomeBloc(this._getProducts) : super(Loading());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if(event is GetAllProducts) {
      yield Loading();
      final productsOrFail = await _getProducts(NoParams());
      yield productsOrFail.fold(
          (failure) => Error(message: _failureToMessage(failure)),
          (products) => Loaded(products: products));
    }
  }

  String _failureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return server_failure_message;
      default:
        return server_failure_message;
    }
  }
}
