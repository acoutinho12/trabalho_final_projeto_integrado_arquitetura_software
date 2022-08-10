import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  final int quantity;
  const AddToCart({Key? key, required this.product, required this.quantity})
      : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState(product, quantity);
}

class _AddToCartState extends State<AddToCart> {
  final Product product;
  final int quantity;
  _AddToCartState(this.product, this.quantity);
  void _addToCart() {
    BlocProvider.of<CartBloc>(context)
        .add(CartEvent.setCartProduct(product: product, quantity: quantity));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: _addToCart,
        child: Container(
          width: 100,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
          child: Center(
            child: Text(
              "Adicionar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0 * aspectRatioConstant(context),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
