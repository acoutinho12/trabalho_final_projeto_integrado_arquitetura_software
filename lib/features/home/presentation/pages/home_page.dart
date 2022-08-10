import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/error/failures_messages.dart';
import 'package:ollen/core/widgets/default_scaffold.dart';
import 'package:ollen/features/home/presentation/bloc/home_bloc.dart';
import 'package:ollen/features/home/presentation/widgets/widgets.dart';
import 'package:ollen/injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>(),
      child: DefaultScaffold(
        child: Expanded(
          child: BlocBuilder<HomeBloc, HomeState>(
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
        ),
      ),
    );
  }
}
