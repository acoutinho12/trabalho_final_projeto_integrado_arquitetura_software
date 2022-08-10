// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'core/features/cart/data/datasource/cart_local_data_source.dart' as _i8;
import 'core/features/cart/data/repositories/cart_repository_impl.dart' as _i10;
import 'core/features/cart/domain/repositories/cart_repository.dart' as _i9;
import 'core/features/cart/domain/usecases.dart/add_cart_product.dart' as _i15;
import 'core/features/cart/domain/usecases.dart/get_cart_products.dart' as _i11;
import 'core/features/cart/domain/usecases.dart/remove_from_cart.dart' as _i14;
import 'core/features/cart/presentation/bloc/cart_bloc.dart' as _i16;
import 'core/injectables/http_injectable_module.dart' as _i17;
import 'core/injectables/shared_preferences_injectable_module.dart' as _i18;
import 'features/home/data/datasources/product_remote_datasource.dart' as _i4;
import 'features/home/data/repositories/product_repository_impl.dart' as _i6;
import 'features/home/domain/repositories/product_repository.dart' as _i5;
import 'features/home/domain/usecases/get_products.dart' as _i12;
import 'features/home/presentation/bloc/home_bloc.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  await gh.factoryAsync<_i7.SharedPreferences>(
      () => sharedPreferencesInjectableModule.getSharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i8.CartLocalDataSource>(() => _i8.CartLocalDataSourceImpl(
      sharedPreferences: get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i9.CartRepository>(
      () => _i10.CartRepositoryImpl(get<_i8.CartLocalDataSource>()));
  gh.lazySingleton<_i11.GetCartProducts>(
      () => _i11.GetCartProducts(get<_i9.CartRepository>()));
  gh.lazySingleton<_i12.GetProducts>(
      () => _i12.GetProducts(get<_i5.ProductRepository>()));
  gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(get<_i12.GetProducts>()));
  gh.lazySingleton<_i14.RemoveFromCart>(
      () => _i14.RemoveFromCart(get<_i9.CartRepository>()));
  gh.lazySingleton<_i15.AddToCartProducts>(
      () => _i15.AddToCartProducts(get<_i9.CartRepository>()));
  gh.factory<_i16.CartBloc>(() => _i16.CartBloc(get<_i11.GetCartProducts>(),
      get<_i15.AddToCartProducts>(), get<_i14.RemoveFromCart>()));
  return get;
}

class _$HttpInjectableModule extends _i17.HttpInjectableModule {}

class _$SharedPreferencesInjectableModule
    extends _i18.SharedPreferencesInjectableModule {}
