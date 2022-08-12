import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/cart/presentation/bloc/cart_bloc.dart';

class CartDetails extends StatefulWidget {
  final CartBloc cartBloc;
  const CartDetails({Key? key, required this.cartBloc}) : super(key: key);

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  String _subTotalPrice = "0.0";
  String _totalPrice = "0.0";
  final String _frete =
      "R\$ ${(Random().nextDouble() * 25).toStringAsFixed(2)}";
  String _quantity = "";
  void _setTotalPrice(String price) {
    setState(() {
      _subTotalPrice = price;
      double doublePrice = double.parse(price.split(' ')[1]) +
          double.parse(_frete.split(' ')[1]);
      _totalPrice = "R\$ ${doublePrice.toStringAsFixed(2)}";
    });
  }

  void _setQuantity(String quantity) {
    setState(() {
      _quantity =
          "($quantity ${double.parse(quantity) > 1 ? "items" : "item"})   ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartBloc, CartState>(
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
                  _subTotalPrice,
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
    );
  }
}
