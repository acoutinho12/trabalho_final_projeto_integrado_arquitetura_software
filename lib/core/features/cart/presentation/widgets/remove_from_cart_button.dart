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
  IconData icon = Icons.close;
  Color color = ColorConstants.primaryColor;
  bool isShown = false;

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('ATENÇÃO'),
          content: const Text('Tem certeza que deseja remover do carrinho?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('CANCELAR'),
            ),
            TextButton(
              onPressed: _removeFromCart,
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  void _removeFromCart() {
    Navigator.pop(context, 'OK');
    context
        .read<CartBloc>()
        .add(CartEvent.removeFromCartProduct(product: product));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return InkWell(
          onTap: _showMyDialog,
          child: Ink(
              child: state.maybeWhen(
                  removingFromCart: () => const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: ColorConstants.primaryColor,
                      )),
                  orElse: () => Icon(icon, color: color))),
        );
      },
    );
  }
}
