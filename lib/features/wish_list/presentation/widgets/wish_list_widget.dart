import 'package:flutter/material.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/presentation/bloc/wish_list_bloc.dart';
import 'package:ollen/features/wish_list/presentation/widgets/wish_list_product_card.dart';

class WishListWidget extends StatefulWidget {
  final WishListBloc wishListBloc;
  const WishListWidget({
    Key? key,
    required this.wishListProducts,
    required this.onRefresh,
    required this.wishListBloc,
  }) : super(key: key);
  final WishListProducts wishListProducts;
  final Function onRefresh;

  @override
  State<WishListWidget> createState() => _WishListWidgetState();
}

class _WishListWidgetState extends State<WishListWidget> {
  Future<void> _onRefresh() async {
    widget.onRefresh();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: _onRefresh,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: widget.wishListProducts.length,
            itemBuilder: (context, i) {
              return WishListProductCard(
                wishListProduct: widget.wishListProducts[i],
                wishListBloc: widget.wishListBloc,
              );
            },
          ),
        ));
  }
}
