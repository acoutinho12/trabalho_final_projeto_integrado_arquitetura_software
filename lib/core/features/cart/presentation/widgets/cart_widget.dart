import 'package:flutter/material.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_products_card.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({
    Key? key,
    required this.products,
    required this.onRefresh,
  }) : super(key: key);
  final CartProducts products;
  final Function onRefresh;

  void _onCartPriceChangeduct(double price) {
    print(price);
  }

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => widget.onRefresh(),
      child: ListView.builder(
        itemCount: widget.products.length,
        itemBuilder: (context, i) {
          return CartProductsCard(
            product: widget.products[i],
            onCartPriceChangeduct: widget._onCartPriceChangeduct,
          );
        },
      ),
    );
  }
}
