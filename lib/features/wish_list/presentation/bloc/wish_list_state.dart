part of 'wish_list_bloc.dart';

@freezed
class WishListState with _$WishListState {
  const factory WishListState.initial() = _Initial;
  const factory WishListState.loading() = _Loading;
  const factory WishListState.wishListProducts(
      {required WishListProducts wishListProducts}) = _WishListProducts;
  const factory WishListState.wishListProductsId(
      {required List<int> wishListProductsId}) = _WishListProductsId;
  const factory WishListState.favorited({required bool isFavorite}) =
      _WishListFavorited;
  const factory WishListState.error({required String message}) = _Error;
}
