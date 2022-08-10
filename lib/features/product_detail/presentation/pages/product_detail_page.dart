import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/widgets/custom_app_bar.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/product_detail/presentation/widgets/product_detail_card.dart';
import 'package:ollen/injection.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  final SafeAreaProps safeAreaProps = const SafeAreaProps(bottom: false);
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CartBloc>(),
      child: DefaultScaffold(
        safeAreaProps: safeAreaProps,
        appBar: CustomAppBar(
          title: product.name,
          withActions: true,
        ),
        child: Expanded(child: ProductDetailCard(product: product)),
      ),
    );
  }
}
