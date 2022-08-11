import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/core/widgets/increment_or_decrement_widget.dart';
import 'package:ollen/core/widgets/rating_widget.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/product_detail/presentation/widgets/add_to_cart.dart';

class ProductDetailCard extends StatefulWidget {
  final Product product;
  final CartBloc cartBloc;
  const ProductDetailCard(
      {Key? key, required this.product, required this.cartBloc})
      : super(key: key);

  @override
  State<ProductDetailCard> createState() => _ProductDetailCardState();
}

class _ProductDetailCardState extends State<ProductDetailCard> {
  late Product product = widget.product;
  int quantity = 1;
  double rating = Random().nextDouble() * 5.0;
  int reviews = Random().nextInt(200);
  @override
  Widget build(BuildContext context) {
    const sizedBoxHeiht = 12.0;
    return Container(
      padding: const EdgeInsets.only(top: 48.0),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: CachedNetworkImage(
                imageUrl: widget.product.imageUrl,
                placeholder: (context, url) => const Icon(Icons.photo),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill),
          ),
          const Spacer(),
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              height: height(context) * 0.3,
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
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0)),
              ),
              child: Column(children: [
                Row(
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
                    const Spacer(),
                    Column(
                      children: [
                        RatingWidget(
                          rating: rating,
                          onRatingChanged: (rating) {},
                          color: ColorConstants.primaryColor,
                        ),
                        Text(
                          "($reviews Reviews)",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Roboto',
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: sizedBoxHeiht),
                Text(
                  widget.product.description,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Roboto',
                    color: ColorConstants.textPrimaryColor,
                  ),
                ),
                const SizedBox(height: sizedBoxHeiht),
                Row(
                  children: [
                    Text(
                      widget.product.price,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        color: ColorConstants.textPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IncrementOrDecrementWidget(
                      quantity: quantity,
                      onValueChangeCallback: (quantity) {
                        setState(() {
                          this.quantity = quantity;
                        });
                      },
                    ),
                    const Spacer(),
                    AddToCart(
                      product: product,
                      quantity: quantity,
                      cartBloc: widget.cartBloc,
                    ),
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
