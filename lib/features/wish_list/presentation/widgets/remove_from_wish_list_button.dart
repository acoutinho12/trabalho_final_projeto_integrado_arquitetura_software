import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/presentation/bloc/wish_list_bloc.dart';

class RemoveFromWishListButton extends StatefulWidget {
  final WishListProduct wishListProduct;
  final WishListBloc wishListBloc;
  const RemoveFromWishListButton(
      {Key? key, required this.wishListProduct, required this.wishListBloc})
      : super(key: key);

  @override
  State<RemoveFromWishListButton> createState() =>
      _RemoveFromWishListButtonState();
}

class _RemoveFromWishListButtonState extends State<RemoveFromWishListButton> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('ATENÇÃO'),
          content: const Text('Tem certeza que deseja remover dos favoritos?'),
          actions: <Widget>[
            TextButton(
              onPressed: _dimissDialog,
              child: const Text('CANCELAR'),
            ),
            TextButton(
              onPressed: _removeFromWishList,
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

  void _removeFromWishList() {
    _dimissDialog();
    widget.wishListBloc.add(WishListEvent.removeFromWishList(
        wishListProduct: widget.wishListProduct));
    widget.wishListBloc.add(const WishListEvent.getAllProducts());
  }

  void _dimissDialog() {
    Navigator.of(context, rootNavigator: true).pop();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishListBloc, WishListState>(
      bloc: widget.wishListBloc,
      builder: (context, state) {
        return IconButton(
          onPressed: _showMyDialog,
          icon: const Icon(Icons.close),
        );
      },
    );
  }
}
