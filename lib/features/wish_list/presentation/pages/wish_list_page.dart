import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/core/widgets/empty_page.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/presentation/bloc/wish_list_bloc.dart';
import 'package:ollen/features/wish_list/presentation/widgets/wish_list_widget.dart';
import 'package:ollen/injection.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  WishListPageState createState() => WishListPageState();
}

class WishListPageState extends State<WishListPage> {
  WishListProducts _wishListProducts = [];
  final WishListBloc wishListBloc = getIt<WishListBloc>();
  bool _isLoading = true;
  final String message = "Nenhum produto nos favoritos";
  @override
  void initState() {
    super.initState();
    _getWishListProducts();
  }

  void _getWishListProducts() {
    wishListBloc.add(const WishListEvent.getAllProducts());
  }

  void _setWishListProducts(WishListProducts wishListProducts) {
    setState(() {
      _wishListProducts = wishListProducts;
      _isLoading = false;
    });
  }

  void _setLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBarTitle: 'Favoritos',
      child: BlocListener<WishListBloc, WishListState>(
          bloc: wishListBloc,
          listener: (context, state) {
            state.whenOrNull(
                wishListProducts: _setWishListProducts, loading: _setLoading);
          },
          child: _isLoading
              ? const CircularProgressIndicator()
              : (_wishListProducts.isNotEmpty
                  ? WishListWidget(
                      wishListProducts: _wishListProducts,
                      onRefresh: _getWishListProducts,
                      wishListBloc: wishListBloc)
                  : EmptyPage(
                      action: _getWishListProducts,
                      message: message,
                    ))),
    );
  }
}

class HomeWidget {}
