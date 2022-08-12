import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ollen/core/error/failures_messages.dart';
import 'package:ollen/core/usecases/usecase.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/domain/usecases/add_product_to_wish_list.dart';
import 'package:ollen/features/wish_list/domain/usecases/get_all_wish_list_products.dart';
import 'package:ollen/features/wish_list/domain/usecases/get_wish_list_products_id.dart';
import 'package:ollen/features/wish_list/domain/usecases/remove_product_from_wish_list.dart';

part 'wish_list_bloc.freezed.dart';
part 'wish_list_event.dart';
part 'wish_list_state.dart';

@injectable
class WishListBloc extends Bloc<WishListEvent, WishListState> {
  final GetAllWishListProducts _getAllWishListProducts;
  final AddProductToWishList _addProductToWishList;
  final GetWishListProductsId _getWishListProductsIdUseCase;
  final RemoveProductFromWishList _removeProductFromWishList;
  WishListBloc(this._getAllWishListProducts, this._addProductToWishList,
      this._getWishListProductsIdUseCase, this._removeProductFromWishList)
      : super(const WishListState.initial());

  @override
  Stream<WishListState> mapEventToState(
    WishListEvent event,
  ) async* {
    yield* event.when(
        getAllProducts: _getAllProducts,
        addToWishList: _addToWishList,
        getWishListProductsId: _getWishListProductsId,
        removeFromWishList: _removeFromWishList);
  }

/////////////////////////////// Private ///////////////////////////////////////
  Stream<WishListState> _getAllProducts() async* {
    const WishListState.loading();
    final productsOrFail = await _getAllWishListProducts(NoParams());
    yield productsOrFail.fold(
        (message) => WishListState.error(message: failureToMessage(message)),
        (wishListProducts) =>
            WishListState.wishListProducts(wishListProducts: wishListProducts));
  }

  Stream<WishListState> _getWishListProductsId() async* {
    const WishListState.loading();
    final productsOrFail = await _getWishListProductsIdUseCase(NoParams());
    yield productsOrFail.fold(
        (message) => WishListState.error(message: failureToMessage(message)),
        (wishListProductsId) => WishListState.wishListProductsId(
            wishListProductsId: wishListProductsId));
  }

  Stream<WishListState> _addToWishList(WishListProduct wishListProduct) async* {
    const WishListState.loading();
    AddToWishListParams addToWishListParams =
        AddToWishListParams(wishListProduct: wishListProduct);
    final addToWishListOrFail =
        await _addProductToWishList(addToWishListParams);
    yield addToWishListOrFail.fold(
        (message) => WishListState.error(message: failureToMessage(message)),
        (l) => const WishListState.initial());
  }

  Stream<WishListState> _removeFromWishList(
      WishListProduct wishListProduct) async* {
    const WishListState.loading();
    RemoveProductFromWishListParams addToWishListParams =
        RemoveProductFromWishListParams(wishListProduct: wishListProduct);
    final removeFromWishListOrFail =
        await _removeProductFromWishList(addToWishListParams);
    yield removeFromWishListOrFail.fold(
        (message) => WishListState.error(message: failureToMessage(message)),
        (l) => const WishListState.initial());
  }
  /////////////////////////////// Private ///////////////////////////////////////
}
