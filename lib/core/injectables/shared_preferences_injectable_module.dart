import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPreferencesInjectableModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get getSharedPreferences async => await SharedPreferences.getInstance();
}