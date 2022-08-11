import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/product_detail/presentation/widgets/product_detail_card.dart';
import 'package:ollen/injection.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final SafeAreaProps safeAreaProps = const SafeAreaProps(bottom: false);
  late CartBloc cartBloc = getIt<CartBloc>();

  @override
  void dispose() {
    if (getIt.isRegistered(instance: cartBloc)) {
      getIt.resetLazySingleton<CartBloc>(instance: cartBloc);
    } else if (getIt.isRegistered(instance: getIt<CartBloc>())) {
      getIt.resetLazySingleton<CartBloc>(instance: getIt<CartBloc>());
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => cartBloc,
      child: DefaultScaffold(
          safeAreaProps: safeAreaProps,
          appBarTitle: widget.product.name,
          withActions: true,
          child:
              ProductDetailCard(product: widget.product, cartBloc: cartBloc)),
    );
  }
}
