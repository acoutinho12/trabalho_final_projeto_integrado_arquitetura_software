import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/utils/media_query.dart';

class CartLoadingWidget extends StatefulWidget {
  const CartLoadingWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CartLoadingWidget();
  }
}

class _CartLoadingWidget extends State<CartLoadingWidget> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CartBloc>(context).add(const CartEvent.getAllProducts());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context),
      child: Center(
        child: Lottie.network(
            'https://assets2.lottiefiles.com/private_files/lf30_tb0bobpr.json',
            repeat: true,
            animate: true,
            reverse: true,
            width: 1200,
            height: 1200),
      ),
    );
  }
}
