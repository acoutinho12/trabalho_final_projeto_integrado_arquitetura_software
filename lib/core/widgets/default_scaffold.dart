import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';

class SafeAreaProps {
  final bool left;
  final bool top;
  final bool right;
  final bool bottom;
  const SafeAreaProps(
      {this.left = true,
      this.top = true,
      this.right = true,
      this.bottom = true});
}

class DefaultScaffold extends StatelessWidget {
  final Widget child;
  final SafeAreaProps? safeAreaProps;
  final PreferredSizeWidget? appBar;
  const DefaultScaffold(
      {Key? key, required this.child, this.appBar, this.safeAreaProps})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: ColorConstants.grayColor,
      body: SafeArea(
        left: safeAreaProps?.left ?? true,
        top: safeAreaProps?.top ?? true,
        right: safeAreaProps?.right ?? true,
        bottom: safeAreaProps?.bottom ?? true,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
