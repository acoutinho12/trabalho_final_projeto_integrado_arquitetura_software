// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectables/http_injectable_module.dart' as _i9;
import 'features/home/data/datasources/product_remote_datasource.dart' as _i4;
import 'features/home/data/repositories/product_repository_impl.dart' as _i6;
import 'features/home/domain/repositories/product_repository.dart' as _i5;
import 'features/home/domain/usecases/get_products.dart' as _i7;
import 'features/home/presentation/bloc/home_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpInjectableModule = _$HttpInjectableModule();
  gh.lazySingleton<_i3.Client>(() => httpInjectableModule.getClient);
  gh.lazySingleton<_i4.ProductRemoteDataSource>(
      () => _i4.ProductRemoteDataSourceImpl(get<_i3.Client>()));
  gh.lazySingleton<_i5.ProductRepository>(
      () => _i6.ProductRepositoryImpl(get<_i4.ProductRemoteDataSource>()));
  gh.lazySingleton<_i7.GetProducts>(
      () => _i7.GetProducts(get<_i5.ProductRepository>()));
  gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(get<_i7.GetProducts>()));
  return get;
}

class _$HttpInjectableModule extends _i9.HttpInjectableModule {}
