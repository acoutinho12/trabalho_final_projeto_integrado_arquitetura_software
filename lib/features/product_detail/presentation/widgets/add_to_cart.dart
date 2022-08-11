import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  final CartBloc cartBloc;
  final int quantity;
  const AddToCart(
      {Key? key,
      required this.product,
      required this.quantity,
      required this.cartBloc})
      : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  void _addToCart() {
    setState(() {
      widget.cartBloc.add(CartEvent.addToCartProduct(
          product: widget.product, quantity: widget.quantity));
      widget.cartBloc.add(const CartEvent.getCartQuantity());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      bloc: widget.cartBloc,
      builder: (context, state) {
        return Container(
          width: 100,
          height: 60,
          decoration: BoxDecoration(
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(8.0)),
          child: state.maybeWhen(
            orElse: () => Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: _addToCart,
                  child: SizedBox(
                    child: Ink(
                      child: const Center(
                        child: Text(
                          "Adicionar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            loading: () => const Center(
                child: Text("Adicionando ...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ))),
          ),
        );
      },
    );
  }
}
