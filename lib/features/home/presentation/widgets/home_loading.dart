import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    BlocProvider.of<HomeBloc>(context).add(GetAllProducts());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) / 3,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
