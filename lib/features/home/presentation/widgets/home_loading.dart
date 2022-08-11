import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/home/presentation/bloc/bloc.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoadingWidget();
  }
}

class _LoadingWidget extends State<LoadingWidget> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(GetAllProducts());
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
