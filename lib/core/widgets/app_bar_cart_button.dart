import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/routes/app_router.dart';
import 'package:ollen/injection.dart';

import '../utils/colors.dart';

class AppBarCartButton extends StatefulWidget {
  const AppBarCartButton({Key? key}) : super(key: key);

  @override
  State<AppBarCartButton> createState() => _AppBarCartButtonState();
}

class _AppBarCartButtonState extends State<AppBarCartButton> {
  String quantity = "";
  final Icon shoppingCartIcon = const Icon(
    Icons.shopping_cart,
    color: ColorConstants.primaryColor,
  );
  @override
  void initState() {
    super.initState();
    getIt.resetLazySingleton<CartBloc>(instance: getIt<CartBloc>());
    getIt<CartBloc>().add(const CartEvent.getCartQuantity());
  }

  void _setQuantity(q) {
    setState(() {
      quantity = q;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartBloc, CartState>(
        bloc: getIt<CartBloc>(),
        listener: (context, state) =>
            {state.whenOrNull(cartQuantity: _setQuantity)},
        child: IconButton(
          icon: Badge(
            badgeContent: Text(
              quantity,
              style: const TextStyle(fontSize: 12),
            ),
            child: const Icon(
              Icons.shopping_cart,
              color: ColorConstants.primaryColor,
            ),
          ),
          onPressed: () {
            if (ModalRoute.of(context)?.settings.name != CartRoute.name) {
              AutoRouter.of(context).pushNamed('/cart-page');
            }
          },
        ));
  }
}
