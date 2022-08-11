import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/error/failures_messages.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/features/home/presentation/bloc/home_bloc.dart';
import 'package:ollen/features/home/presentation/widgets/widgets.dart';
import 'package:ollen/injection.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getIt.resetLazySingleton<HomeBloc>(instance: getIt<HomeBloc>());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBarTitle: 'Øllen',
      withActions: true,
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: getIt<HomeBloc>(),
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingWidget();
          } else if (state is Loaded) {
            return HomeWidget(products: state.products);
          } else if (state is Error) {
            return Text(
              state.message,
            );
          } else {
            return const Text(
              serverFailureMessage,
            );
          }
        },
      ),
    );
  }
}
