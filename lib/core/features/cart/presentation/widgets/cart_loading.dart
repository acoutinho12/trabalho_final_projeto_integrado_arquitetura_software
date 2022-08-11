import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ollen/core/utils/media_query.dart';

class CartLoadingWidget extends StatelessWidget {
  const CartLoadingWidget({Key? key}) : super(key: key);

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
