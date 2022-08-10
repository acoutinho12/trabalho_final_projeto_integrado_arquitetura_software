import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_loading.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_products_card.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_widget.dart';
import 'package:ollen/core/widgets/custom_app_bar.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/core/widgets/empty_page.dart';
import 'package:ollen/injection.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBar: const CustomAppBar(title: "Carrinho"),
      child: BlocProvider(
        create: (context) => getIt<CartBloc>(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
            void action() {
              BlocProvider.of<CartBloc>(context)
                  .add(const CartEvent.getAllProducts());
            }

            return Container(
              child: state.maybeWhen(
                  loaded: (products) => CartWidget(products: products),
                  error: (_) => const EmptyPage(),
                  orElse: () => const CartLoadingWidget()),
            );
          }),
        )),
      ),
    );
  }
}

class HomeWidget {}
