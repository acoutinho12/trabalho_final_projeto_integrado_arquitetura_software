import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/widgets/custom_app_bar.dart';

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
  final Widget? bottomNavigationBar;
  final String appBarTitle;
  final bool withActions;
  final SafeAreaProps? safeAreaProps;
  const DefaultScaffold(
      {Key? key,
      this.safeAreaProps,
      required this.appBarTitle,
      required this.withActions,
      required this.child,
      this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: appBarTitle,
          withActions: withActions,
        ),
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
        bottomNavigationBar: bottomNavigationBar);
  }
}
