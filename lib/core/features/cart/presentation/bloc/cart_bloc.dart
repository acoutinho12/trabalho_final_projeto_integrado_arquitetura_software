import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/error/failures_messages.dart';
import 'package:ollen/core/features/cart/domain/usecases.dart/get_cart_products.dart';
import 'package:ollen/core/features/cart/domain/usecases.dart/set_cart_product.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartProducts _getCartProducts;
  final SetCartProducts _setCartProducts;
  CartBloc(this._getCartProducts, this._setCartProducts)
      : super(const CartState.loading());

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    yield* event.when(getAllProducts: () async* {
      yield const CartState.loading();
      final productsOrFail = await _getCartProducts(NoParams());
      yield productsOrFail.fold(
          (failure) => CartState.error(_failureToMessage(failure)),
          (products) => products.isNotEmpty
              ? CartState.loaded(products: products)
              : const CartState.error(serverFailureMessage));
    }, setCartProduct: (Product product, int quantity) async* {
      await _setCartProducts(ProductCartParams(product: product, quantity: quantity));
    });
  }

  String _failureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      default:
        return serverFailureMessage;
    }
  }
}
