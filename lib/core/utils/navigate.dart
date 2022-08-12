import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/routes/app_router.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

class Navigate {
  final BuildContext context;
  const Navigate(this.context);
  void toCartPage() {
    if (ModalRoute.of(context)?.settings.name != CartRoute.name) {
      AutoRouter.of(context).pushNamed('/cart-page');
    }
  }

  void toProductDetails({required Product product}) {
    if (ModalRoute.of(context)?.settings.name != ProductDetailRoute.name) {
      AutoRouter.of(context).push(ProductDetailRoute(product: product));
    }
  }
}
