import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/home/domain/usecases/get_products.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetProducts _getProducts;
  HomeBloc(this._getProducts) : super(const HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(getAllProducts: (e) async* {
      yield const HomeState.loading();
      await _getProducts(NoParams());
    });
  }
}
