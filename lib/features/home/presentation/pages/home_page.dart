import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/features/home/presentation/bloc/home_bloc.dart';
import 'package:ollen/features/home/presentation/widgets/home_widget.dart';
import 'package:ollen/injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<HomeBloc>(),
        child: const HomeWidget(),
      ),
    );
  }
}