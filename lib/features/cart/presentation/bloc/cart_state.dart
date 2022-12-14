part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = _Loading;
  const factory CartState.loaded({required CartProducts products}) = _Loaded;
  const factory CartState.error(String message) = _Error;
  const factory CartState.removingFromCart() = _RemovingFromCart;
  const factory CartState.cartQuantity({required String quantity}) =
      _CartQuantity;
  const factory CartState.totalPrice({required String totalPrice}) =
      _TotalPrice;
}
