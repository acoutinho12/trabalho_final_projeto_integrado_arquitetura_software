part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getAllProducts() = _GetAllProducts;
  const factory CartEvent.addToCartProduct({required Product product, required int quantity}) = _AddToCartProduct;
  const factory CartEvent.removeFromCartProduct({required CartProduct product}) = _RemoveFromCartProduct;
  const factory CartEvent.changeProductQuantity({required CartProduct product}) = _ChangeProductQuantity;  
  const factory CartEvent.getCartQuantity() = _GetCartQuantity;  
}