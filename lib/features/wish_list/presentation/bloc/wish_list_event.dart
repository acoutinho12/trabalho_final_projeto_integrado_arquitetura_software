part of 'wish_list_bloc.dart';

@freezed
class WishListEvent with _$WishListEvent {
  const factory WishListEvent.getAllProducts() = _GetAllProducts;
  const factory WishListEvent.addToWishList(
      {required WishListProduct wishListProduct}) = _AddToWishList;
  const factory WishListEvent.removeFromWishList(
      {required WishListProduct wishListProduct}) = _RemoveFromWishList;
  const factory WishListEvent.getWishListProductsId() = _GetWishListProductsId;
}
