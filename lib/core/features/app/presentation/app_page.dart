import 'package:flutter/material.dart';
import 'package:ollen/core/features/app/widgets/bottom_tab_widget.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomTabWidget(),);
  }
}
