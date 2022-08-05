import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        builder: null,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
        ),
      );
  }
}