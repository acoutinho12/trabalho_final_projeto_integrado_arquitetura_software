import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/core/widgets/increment_or_decrement_widget.dart';
import 'package:ollen/features/cart/domain/entities/cart_product.dart';
import 'package:ollen/features/cart/presentation/bloc/cart_bloc.dart';

import 'remove_from_cart_button.dart';

class CartProductsCard extends StatefulWidget {
  final CartProduct product;
  final CartBloc cartBloc;
  const CartProductsCard(
      {Key? key, required this.product, required this.cartBloc})
      : super(key: key);

  @override
  CartProductsCardState createState() => CartProductsCardState();
}

class CartProductsCardState extends State<CartProductsCard> {
  static const sizedBoxHeiht = 12.0;
  late CartProduct product = widget.product;
  late int quantity = widget.product.quantity;
  late String currency = widget.product.price.split(' ')[0];
  late double originalPrice = double.parse(widget.product.price.split(' ')[1]);
  late String price =
      (double.parse(widget.product.price.split(' ')[1]) * quantity)
          .toStringAsFixed(2);

  void _changeProductCartQuantity(int quantity) {
    setState(() {
      price = (originalPrice * quantity).toStringAsFixed(2);
      this.quantity = quantity;
      CartProduct newProduct = CartProduct(
          id: product.id,
          name: product.name,
          description: product.description,
          imageUrl: product.imageUrl,
          price: product.price,
          quantity: quantity);
      widget.cartBloc.add(CartEvent.changeProductQuantity(product: newProduct));
      widget.cartBloc.add(const CartEvent.getCartQuantity());
      widget.cartBloc.add(const CartEvent.getTotalPrice());
    });
  }

  @override
  Widget build(BuildContext context) {
    final imageHeight = height(context) * 0.18;
    final containerHeight = height(context) * 0.22;
    final padding = height(context) * 0.02;
    return Column(
      children: [
        Container(
          height: containerHeight,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.8),
                blurRadius: 8.0,
                spreadRadius: 0.0,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CachedNetworkImage(
                          imageUrl: widget.product.imageUrl,
                          placeholder: (context, url) =>
                              const Icon(Icons.photo),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          height: imageHeight,
                          fit: BoxFit.fill),
                    ],
                  ),
                ),
                const SizedBox(height: sizedBoxHeiht),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Roboto',
                          color: ColorConstants.textPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: sizedBoxHeiht),
                      Text(
                        widget.product.description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Roboto',
                          color: ColorConstants.textPrimaryColor,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "$currency $price",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          color: ColorConstants.textPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RemoveFromCartButton(
                        product: product, cartBloc: widget.cartBloc),
                    const Spacer(),
                    IncrementOrDecrementWidget(
                      quantity: quantity,
                      onValueChangeCallback: _changeProductCartQuantity,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: sizedBoxHeiht),
      ],
    );
  }
}
