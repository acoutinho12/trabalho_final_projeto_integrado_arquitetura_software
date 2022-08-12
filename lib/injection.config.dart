// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'core/injectables/http_injectable_module.dart' as _i28;
import 'core/injectables/shared_preferences_injectable_module.dart' as _i29;
import 'features/cart/data/datasource/cart_local_data_source.dart' as _i12;
import 'features/cart/data/repositories/cart_repository_impl.dart' as _i14;
import 'features/cart/domain/repositories/cart_repository.dart' as _i13;
import 'features/cart/domain/usecases/add_cart_product.dart' as _i26;
import 'features/cart/domain/usecases/change_product_cart_quantity.dart'
    as _i15;
import 'features/cart/domain/usecases/get_cart_products.dart' as _i17;
import 'features/cart/domain/usecases/get_quantity_products_cart.dart' as _i19;
import 'features/cart/domain/usecases/get_total_price.dart' as _i20;
import 'features/cart/domain/usecases/remove_from_cart.dart' as _i23;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i27;
import 'features/home/data/datasources/product_remote_datasource.dart' as _i4;
import 'features/home/data/repositories/product_repository_impl.dart' as _i6;
import 'features/home/domain/repositories/product_repository.dart' as _i5;
import 'features/home/domain/usecases/get_products.dart' as _i18;
import 'features/home/presentation/bloc/home_bloc.dart' as _i22;
import 'features/wish_list/data/datasources/wish_list_local_datasource.dart'
    as _i8;
import 'features/wish_list/data/repositories/wish_list_repository_impl.dart'
    as _i10;
import 'features/wish_list/domain/repositories/wish_list_repository.dart'
    as _i9;
import 'features/wish_list/domain/usecases/add_product_to_wish_list.dart'
    as _i11;
import 'features/wish_list/domain/usecases/get_all_wish_list_products.dart'
    as _i16;
import 'features/wish_list/domain/usecases/get_wish_list_products_id.dart'
    as _i21;
import 'features/wish_list/domain/usecases/remove_product_from_wish_list.dart'
    as _i24;
import 'features/wish_list/presentation/bloc/wish_list_bloc.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpInjectableModule = _$HttpInjectableModule();
  final sharedPreferencesInjectableModule =
      _$SharedPreferencesInjectableModule();
  gh.lazySingleton<_i3.Client>(() => httpInjectableModule.getClient);
  gh.lazySingleton<_i4.ProductRemoteDataSource>(
      () => _i4.ProductRemoteDataSourceImpl());
  gh.lazySingleton<_i5.ProductRepository>(
      () => _i6.ProductRepositoryImpl(get<_i4.ProductRemoteDataSource>()));
  await gh.lazySingletonAsync<_i7.SharedPreferences>(
      () => sharedPreferencesInjectableModule.getSharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i8.WishListLocalDataSource>(() =>
      _i8.WishListLocalDataSourceImpl(
          sharedPreferences: get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i9.WishListRepository>(
      () => _i10.WishListRepositoryImpl(get<_i8.WishListLocalDataSource>()));
  gh.lazySingleton<_i11.AddProductToWishList>(
      () => _i11.AddProductToWishList(get<_i9.WishListRepository>()));
  gh.lazySingleton<_i12.CartLocalDataSource>(() => _i12.CartLocalDataSourceImpl(
      sharedPreferences: get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i13.CartRepository>(
      () => _i14.CartRepositoryImpl(get<_i12.CartLocalDataSource>()));
  gh.lazySingleton<_i15.ChangeProductCartQuantity>(
      () => _i15.ChangeProductCartQuantity(get<_i13.CartRepository>()));
  gh.lazySingleton<_i16.GetAllWishListProducts>(
      () => _i16.GetAllWishListProducts(get<_i9.WishListRepository>()));
  gh.lazySingleton<_i17.GetCartProducts>(
      () => _i17.GetCartProducts(get<_i13.CartRepository>()));
  gh.lazySingleton<_i18.GetProducts>(
      () => _i18.GetProducts(get<_i5.ProductRepository>()));
  gh.lazySingleton<_i19.GetQuantityCartProducts>(
      () => _i19.GetQuantityCartProducts(get<_i13.CartRepository>()));
  gh.lazySingleton<_i20.GetTotalPrice>(
      () => _i20.GetTotalPrice(get<_i13.CartRepository>()));
  gh.lazySingleton<_i21.GetWishListProductsId>(
      () => _i21.GetWishListProductsId(get<_i9.WishListRepository>()));
  gh.factory<_i22.HomeBloc>(() => _i22.HomeBloc(get<_i18.GetProducts>()));
  gh.lazySingleton<_i23.RemoveFromCart>(
      () => _i23.RemoveFromCart(get<_i13.CartRepository>()));
  gh.lazySingleton<_i24.RemoveProductFromWishList>(
      () => _i24.RemoveProductFromWishList(get<_i9.WishListRepository>()));
  gh.factory<_i25.WishListBloc>(() => _i25.WishListBloc(
      get<_i16.GetAllWishListProducts>(),
      get<_i11.AddProductToWishList>(),
      get<_i21.GetWishListProductsId>(),
      get<_i24.RemoveProductFromWishList>()));
  gh.lazySingleton<_i26.AddToCartProducts>(
      () => _i26.AddToCartProducts(get<_i13.CartRepository>()));
  gh.lazySingleton<_i27.CartBloc>(() => _i27.CartBloc(
      get<_i17.GetCartProducts>(),
      get<_i26.AddToCartProducts>(),
      get<_i23.RemoveFromCart>(),
      get<_i15.ChangeProductCartQuantity>(),
      get<_i19.GetQuantityCartProducts>(),
      get<_i20.GetTotalPrice>()));
  return get;
}

class _$HttpInjectableModule extends _i28.HttpInjectableModule {}

class _$SharedPreferencesInjectableModule
    extends _i29.SharedPreferencesInjectableModule {}
