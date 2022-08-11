import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures.dart';
import 'package:ollen/core/error/failures_messages.dart';
import 'package:ollen/core/features/cart/data/model/cart_product_model.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/domain/usecases/add_cart_product.dart';
import 'package:ollen/core/features/cart/domain/usecases/change_product_cart_quantity.dart';
import 'package:ollen/core/features/cart/domain/usecases/get_cart_products.dart';
import 'package:ollen/core/features/cart/domain/usecases/get_quantity_products_cart.dart';
import 'package:ollen/core/features/cart/domain/usecases/remove_from_cart.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

@lazySingleton
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartProducts _getCartProducts;
  final AddToCartProducts _setCartProducts;
  final RemoveFromCart _removeFromCart;
  final ChangeProductCartQuantity _changeProductCartQuantity;
  final GetQuantityCartProducts _getQuantityCartProducts;
  CartBloc(this._getCartProducts, this._setCartProducts, this._removeFromCart,
      this._changeProductCartQuantity, this._getQuantityCartProducts)
      : super(const CartState.initial());

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    yield* event.when(
      getAllProducts: () async* {
        yield const CartState.loading();
        final productsOrFail = await _getCartProducts(NoParams());
        yield productsOrFail.fold(
            (failure) => CartState.error(_failureToMessage(failure)),
            (products) => CartState.loaded(products: products));
      },
      addToCartProduct: (Product product, int quantity) async* {
        yield const CartState.loading();
        CartProductModel cartProduct =
            _convertProductToCartProductModel(product, quantity);
        await _setCartProducts(ProductCartParams(product: cartProduct));
        yield const CartState.initial();
      },
      removeFromCartProduct: (CartProduct product) async* {
        yield const CartState.removingFromCart();
        CartProductModel cartProduct =
            _convertCartProductToCartProductModel(product);
        final removeOrFail =
            await _removeFromCart(RemoveFromCartParams(product: cartProduct));
        yield removeOrFail.fold(
            (failure) => CartState.error(_failureToMessage(failure)),
            (products) => products.isNotEmpty
                ? CartState.loaded(products: products)
                : const CartState.error(serverFailureMessage));
      },
      changeProductQuantity: (CartProduct product) async* {
        CartProductModel cartProduct =
            _convertCartProductToCartProductModel(product);
        await _changeProductCartQuantity(
            ChangeProductCartQuantityParams(product: cartProduct));
      },
      getCartQuantity: () async* {
        yield const CartState.loading();
        final quantityOrFail = await _getQuantityCartProducts(NoParams());
        yield quantityOrFail.fold(
            (l) => const CartState.cartQuantity(quantity: "0"),
            (quantity) => CartState.cartQuantity(quantity: quantity));
      },
    );
  }

  CartProductModel _convertCartProductToCartProductModel(CartProduct product) =>
      CartProductModel(
          id: product.id,
          name: product.name,
          description: product.description,
          imageUrl: product.imageUrl,
          price: product.price,
          quantity: product.quantity);

  CartProductModel _convertProductToCartProductModel(
          Product product, int quantity) =>
      CartProductModel(
          id: product.id,
          name: product.name,
          description: product.description,
          imageUrl: product.imageUrl,
          price: product.price,
          quantity: quantity);

  String _failureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      default:
        return serverFailureMessage;
    }
  }
}
