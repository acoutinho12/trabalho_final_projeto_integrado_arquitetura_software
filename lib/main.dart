import 'package:flutter/material.dart';
import 'package:ollen/core/features/router/presentation/pages/router_page.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(RouterPage());
}
