import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/widgets/app_bar_cart_button.dart';
import 'package:ollen/injection.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool withActions;
  const CustomAppBar({Key? key, this.title = "", this.withActions = false})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => getIt<CartBloc>(),
      child: AppBar(
        iconTheme: const IconThemeData(
          color: ColorConstants.primaryColor,
        ),
        title: Text(
          title,
          style:
              const TextStyle(fontSize: 16, color: ColorConstants.primaryColor),
        ),
        backgroundColor: ColorConstants.appColor,
        actions: withActions
            ? <Widget>[
                const AppBarCartButton(),
              ]
            : [],
      ),
    );
  }
}
