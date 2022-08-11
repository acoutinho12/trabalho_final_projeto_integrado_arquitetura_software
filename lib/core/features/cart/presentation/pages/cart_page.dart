import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_loading.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_widget.dart';
import 'package:ollen/core/widgets/custom_app_bar.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/core/widgets/empty_page.dart';
import 'package:ollen/injection.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  CartProducts cartProducts = [];

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBar: const CustomAppBar(
        title: "Carrinho",
        withActions: true,
      ),
      child: BlocProvider(
        create: (context) => getIt<CartBloc>(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
            void action() {
              context.read<CartBloc>().add(const CartEvent.getAllProducts());
            }

            return Container(
                child: state.whenOrNull(
              loaded: (products) {
                cartProducts = products;
                return Column(children: [
                  Expanded(flex: 3, child: CartWidget(products: products)),
                  const Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 300,
                        height: 300,
                      ))
                ]);
              },
              error: (_) => EmptyPage(
                action: action,
              ),
              loading: () => const CartLoadingWidget(),
              removingFromCart: () => CartWidget(products: cartProducts),
            ));
          }),
        )),
      ),
    );
  }
}

class HomeWidget {}
