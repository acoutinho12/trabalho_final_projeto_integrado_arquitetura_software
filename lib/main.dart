import 'package:flutter/material.dart';
import 'package:ollen/features/home/presentation/pages/home_page.dart';
import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const HomePage());
}

