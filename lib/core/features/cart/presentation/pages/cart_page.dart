import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_loading.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_widget.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/core/widgets/empty_page.dart';
import 'package:ollen/injection.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  CartProducts _cartProducts = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getAllProducts();
  }

  void _getAllProducts() {
    getIt<CartBloc>().add(const CartEvent.getAllProducts());
  }

  void _setCartProducts(products) {
    setState(() {
      _cartProducts = products;
      _isLoading = false;
    });
  }

  void _setLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  @override
  void dispose() {
    getIt.resetLazySingleton<CartBloc>(instance: getIt<CartBloc>());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBarTitle: 'Carrinho',
      withActions: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocListener<CartBloc, CartState>(
            bloc: getIt<CartBloc>(),
            listener: (context, state) {
              state.whenOrNull(
                  loaded: (products) => _setCartProducts(products),
                  loading: () => _setLoading);
            },
            child: _isLoading
                ? const CartLoadingWidget()
                : (_cartProducts.isNotEmpty
                    ? CartWidget(
                        products: _cartProducts, onRefresh: _getAllProducts)
                    : EmptyPage(
                        action: _getAllProducts,
                      ))),
      ),
    );
  }
}

class HomeWidget {}
