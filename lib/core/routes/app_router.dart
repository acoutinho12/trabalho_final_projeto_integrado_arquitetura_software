import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/features/app/presentation/app_page.dart';
import 'package:ollen/core/features/cart/presentation/pages/cart_page.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/product_detail/presentation/pages/product_detail_page.dart';

part 'app_router.gr.dart';

const maintainState = false;

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AppPage, initial: true, maintainState: maintainState),
    AutoRoute(page: CartPage, maintainState: maintainState),
    AutoRoute(page: ProductDetailPage, maintainState: maintainState),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
