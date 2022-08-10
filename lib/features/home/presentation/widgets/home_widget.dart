import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/bloc/bloc.dart';
import 'package:ollen/features/home/presentation/widgets/widgets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key, required this.products}) : super(key: key);
  final Products products;
  Future<void> _onRefresh(context) async {
    BlocProvider.of<HomeBloc>(context).add(GetAllProducts());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context),
      child: CustomScrollView(
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
                childAspectRatio: aspectRatioConstant(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
