import 'package:flutter/material.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/bloc/bloc.dart';
import 'package:ollen/features/home/presentation/widgets/widgets.dart';
import 'package:ollen/features/wish_list/presentation/bloc/wish_list_bloc.dart';
import 'package:ollen/injection.dart';

class HomeWidget extends StatelessWidget {
  final Products products;
  final WishListBloc wishListBloc;
  final List<int> favoriteIds;
  const HomeWidget(
      {Key? key,
      required this.products,
      required this.wishListBloc,
      required this.favoriteIds})
      : super(key: key);
  Future<void> _onRefresh() async {
    getIt<HomeBloc>().add(GetAllProducts());
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(),
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return ProductCard(
                    product: products[index],
                    wishListBloc: wishListBloc,
                    favoriteIds: favoriteIds);
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
