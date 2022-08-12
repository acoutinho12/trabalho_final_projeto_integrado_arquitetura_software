import 'package:flutter/material.dart';
import 'package:ollen/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/features/cart/presentation/widgets/cart_details.dart';
import 'package:ollen/features/cart/presentation/widgets/cart_products_card.dart';

class CartWidget extends StatefulWidget {
  final CartBloc cartBloc;
  const CartWidget({
    Key? key,
    required this.products,
    required this.onRefresh,
    required this.cartBloc,
  }) : super(key: key);
  final CartProducts products;
  final Function onRefresh;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  Future<void> _onRefresh() async {
    widget.onRefresh();
  }

  @override
  void initState() {
    super.initState();
    _getTotalPrice();
    _getQuantity();
  }

  void _getTotalPrice() {
    widget.cartBloc.add(const CartEvent.getTotalPrice());
  }

  void _getQuantity() {
    widget.cartBloc.add(const CartEvent.getCartQuantity());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: widget.products.length,
                itemBuilder: (context, i) {
                  return CartProductsCard(
                    product: widget.products[i],
                    cartBloc: widget.cartBloc,
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CartDetails(cartBloc: widget.cartBloc),
          )
        ],
      ),
    );
  }
}
