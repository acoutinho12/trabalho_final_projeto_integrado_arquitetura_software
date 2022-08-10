import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  final int quantity;
  const AddToCart({Key? key, required this.product, required this.quantity})
      : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  late Product product = widget.product;
  late int quantity = widget.quantity;
  void _addToCart() {
    BlocProvider.of<CartBloc>(context)
        .add(CartEvent.addToCartProduct(product: product, quantity: quantity));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Container(
          width: 100,
          height: 60,
          decoration: BoxDecoration(
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(8.0)),
          child: state.maybeWhen(
            initial: () => Material(
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
            orElse: () => const Center(
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
