import 'package:flutter/material.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/widgets/widgets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key, required this.products}) : super(key: key);
  final Products products;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ProductCard(product: products[index]);
            }, childCount: products.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: width(context) / height(context),
            ),
          ),
        ),
      ],
    );
  }
}
