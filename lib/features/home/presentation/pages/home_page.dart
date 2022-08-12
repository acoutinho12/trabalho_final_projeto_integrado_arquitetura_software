import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/core/widgets/empty_page.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/bloc/home_bloc.dart';
import 'package:ollen/features/home/presentation/widgets/widgets.dart';
import 'package:ollen/features/wish_list/presentation/bloc/wish_list_bloc.dart';
import 'package:ollen/injection.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc _homeBloc = getIt<HomeBloc>();
  final WishListBloc _wishListBloc = getIt<WishListBloc>();
  Products _products = [];
  bool _isLoading = true;
  List<int> _favoriteIds = [];
  @override
  void initState() {
    super.initState();
    _homeBloc.add(GetAllProducts());
    _wishListBloc.add(const WishListEvent.getWishListProductsId());
  }

  void _setProducts(Products products) {
    setState(() {
      _products = products;
      _isLoading = false;
    });
  }

  void _setLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  void _setProductsIds(List<int> ids) {
    setState(() {
      _favoriteIds = ids;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBarTitle: 'Øllen',
      child: MultiBlocListener(
          listeners: [
            BlocListener<HomeBloc, HomeState>(
                bloc: _homeBloc,
                listener: (context, state) => {
                      if (state is Loaded)
                        {_setProducts(state.products)}
                      else if (state is Loading)
                        {_setLoading()}
                    }),
            BlocListener<WishListBloc, WishListState>(
                bloc: _wishListBloc,
                listener: (context, state) =>
                    {state.whenOrNull(wishListProductsId: _setProductsIds)}),
          ],
          child: _isLoading
              ? const HomeLoading()
              : (_products.isNotEmpty
                  ? HomeWidget(
                      products: _products,
                      wishListBloc: _wishListBloc,
                      favoriteIds: _favoriteIds,
                    )
                  : const EmptyPage(message: "Nenhum produto encontrado"))),
    );
  }
}
