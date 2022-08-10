import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/widgets/cart_products_card.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/bloc/bloc.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key, required this.products}) : super(key: key);
  final Products products;
  Future<void> _onRefresh(context) async {
    BlocProvider.of<HomeBloc>(context).add(GetAllProducts());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context),
      child: ListView.builder(
        
        itemCount: products.length,
        itemBuilder: (context, i) {
          return CartProductsCard(
            product: products[i],
          );
        },
      ),
    );
  }
}
