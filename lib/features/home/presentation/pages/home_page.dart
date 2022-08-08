import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/features/home/presentation/bloc/home_bloc.dart';
import 'package:ollen/features/home/presentation/widgets/widgets.dart';
import 'package:ollen/injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ollen',
      home: buildBody(context),
      theme: ThemeData.light().copyWith(
        primaryColor: const Color.fromARGB(255, 125, 121, 46),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
      ),
    );
  }

  BlocProvider<HomeBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        body: SafeArea(
          child: Center(
            child: Expanded(
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return LoadingWidget();
                  } else if (state is Loaded) {
                    return HomeWidget(products: state.products);
                  } else if (state is Error) {
                    return Text(
                      state.message,
                    );
                  } else {
                    return const Text(
                      'Nulo',
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
