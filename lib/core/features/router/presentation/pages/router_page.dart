import 'package:flutter/material.dart';
import 'package:ollen/core/routes/app_router.dart';

class RouterPage extends StatelessWidget {
  RouterPage({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
