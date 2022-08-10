part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getAllProducts() = _GetAllProducts;
  const factory CartEvent.setCartProduct({required Product product, required int quantity}) = _SetCartProduct;
}