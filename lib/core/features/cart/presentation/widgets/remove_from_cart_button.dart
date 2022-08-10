import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/utils/colors.dart';

class RemoveFromCartButton extends StatefulWidget {
  final CartProduct product;
  const RemoveFromCartButton({Key? key, required this.product})
      : super(key: key);

  @override
  State<RemoveFromCartButton> createState() => _RemoveFromCartButtonState();
}

class _RemoveFromCartButtonState extends State<RemoveFromCartButton> {
  late CartProduct product = widget.product;
  void _removeFromCart() {
    BlocProvider.of<CartBloc>(context)
        .add(CartEvent.removeFromCartProduct(product: product));
  }

  IconData icon = Icons.close;
  Color color = ColorConstants.primaryColor;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return InkWell(
          onTap: _removeFromCart,
          child: Ink(
              child: state.maybeWhen(
                  removingFromCart: () => const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(color: ColorConstants.primaryColor,)),
                  orElse: () => Icon(icon, color: color))),
        );
      },
    );
  }
}
