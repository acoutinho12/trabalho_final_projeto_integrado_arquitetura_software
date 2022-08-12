// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AppRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AppPage());
    },
    CartRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CartPage(), maintainState: false);
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ProductDetailPage(key: args.key, product: args.product),
          maintainState: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AppRoute.name, path: '/'),
        RouteConfig(CartRoute.name, path: '/cart-page'),
        RouteConfig(ProductDetailRoute.name, path: '/product-detail-page')
      ];
}

/// generated route for
/// [AppPage]
class AppRoute extends PageRouteInfo<void> {
  const AppRoute() : super(AppRoute.name, path: '/');

  static const String name = 'AppRoute';
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: '/cart-page');

  static const String name = 'CartRoute';
}

/// generated route for
/// [ProductDetailPage]
class ProductDetailRoute extends PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({Key? key, required Product product})
      : super(ProductDetailRoute.name,
            path: '/product-detail-page',
            args: ProductDetailRouteArgs(key: key, product: product));

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.product});

  final Key? key;

  final Product product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}
