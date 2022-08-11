import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_products_card.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key? key, required this.products}) : super(key: key);
  final CartProducts products;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  Future<void> _onRefresh(context) async {
    _getAllProducts();
  }

  void _getAllProducts() {
    context.read<CartBloc>().add(const CartEvent.getAllProducts());
  }

  void _onCartPriceChangeduct(double price) {
    print(price);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context),
      child: ListView.builder(
        itemCount: widget.products.length,
        itemBuilder: (context, i) {
          return CartProductsCard(
            product: widget.products[i],
            onCartPriceChangeduct: _onCartPriceChangeduct,
          );
        },
      ),
    );
  }
}
