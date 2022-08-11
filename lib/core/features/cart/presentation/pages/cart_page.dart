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
  final CartBloc cartBloc = getIt<CartBloc>();
  bool _isLoading = true;
  final SafeAreaProps safeAreaProps = const SafeAreaProps(bottom: false);
  final String message = "Nenhum produto no carrinho";
  @override
  void initState() {
    super.initState();
    _getAllProducts();
  }

  void _getAllProducts() {
    cartBloc.add(const CartEvent.getAllProducts());
    cartBloc.add(const CartEvent.getTotalPrice());
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
  Widget build(BuildContext context) {
    return DefaultScaffold(
      safeAreaProps: safeAreaProps,
      appBarTitle: 'Carrinho',
      withActions: true,
      child: BlocListener<CartBloc, CartState>(
          bloc: cartBloc,
          listener: (context, state) {
            state.whenOrNull(
                loaded: (products) => _setCartProducts(products),
                loading: () => _setLoading);
          },
          child: _isLoading
              ? const CartLoadingWidget()
              : (_cartProducts.isNotEmpty
                  ? CartWidget(
                      products: _cartProducts,
                      onRefresh: _getAllProducts,
                      cartBloc: cartBloc)
                  : EmptyPage(
                      action: _getAllProducts,
                      message: message,
                    ))),
    );
  }
}

class HomeWidget {}
