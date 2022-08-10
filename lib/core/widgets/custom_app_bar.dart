import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool withActions;
  const CustomAppBar({Key? key, this.title = "", this.withActions = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
      backgroundColor: ColorConstants.appColor,
      actions: withActions
          ? <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {
                  AutoRouter.of(context).pushNamed('/cart-page');
                },
              ),
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
