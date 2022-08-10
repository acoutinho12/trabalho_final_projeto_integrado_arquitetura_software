import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_products_card.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key, required this.products}) : super(key: key);
  final CartProducts products;
  Future<void> _onRefresh(context) async {
    BlocProvider.of<CartBloc>(context).add(const CartEvent.getAllProducts());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context),
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) {
          return CartProductsCard(
            product: products[i],
          );
        },
      ),
    );
  }
}
