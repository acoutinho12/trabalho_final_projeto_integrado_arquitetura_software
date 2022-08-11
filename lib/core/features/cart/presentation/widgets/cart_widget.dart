import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_products_card.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/utils/media_query.dart';

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
  String _totalPrice = "0.0";
  final String _frete =
      "R\$ ${(Random().nextDouble() * 25).toStringAsFixed(2)}";
  String _quantity = "";

  Future<void> _onRefresh() async {
    widget.onRefresh();
  }

  void _setTotalPrice(String price) {
    setState(() {
      _totalPrice = price;
    });
  }

  void _setQuantity(String quantity) {
    setState(() {
      _quantity =
          "($quantity ${double.parse(quantity) > 1 ? "items" : "item"})   ";
    });
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
            child: BlocListener<CartBloc, CartState>(
              bloc: widget.cartBloc,
              listener: (context, state) {
                state.whenOrNull(
                    totalPrice: _setTotalPrice, cartQuantity: _setQuantity);
              },
              child: Container(
                width: width(context),
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 48.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "SubTotal: ",
                          style: TextStyle(
                              color: ColorConstants.primaryColor,
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          _totalPrice,
                          style: const TextStyle(
                              color: ColorConstants.primaryColor,
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Text(
                          "Frete: ",
                          style: TextStyle(
                              color: ColorConstants.primaryColor,
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          _frete,
                          style: const TextStyle(
                              color: ColorConstants.primaryColor,
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: height(context) * 0.015),
                    const Divider(),
                    Row(
                      children: [
                        const Text(
                          "Total: ",
                          style: TextStyle(
                              color: ColorConstants.primaryColor,
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          _quantity,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          _totalPrice,
                          style: const TextStyle(
                              color: ColorConstants.primaryColor,
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
