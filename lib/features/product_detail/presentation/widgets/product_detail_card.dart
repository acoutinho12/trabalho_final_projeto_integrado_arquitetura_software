import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/core/widgets/increment_or_decrement_widget.dart';
import 'package:ollen/core/widgets/rating_widget.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/product_detail/presentation/widgets/add_to_cart.dart';

class ProductDetailCard extends StatefulWidget {
  final Product product;
  const ProductDetailCard({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailCard> createState() => _ProductDetailCardState(product);
}

class _ProductDetailCardState extends State<ProductDetailCard> {
  final Product product;
  double rating = Random().nextDouble() * 5.0;
  int reviews = Random().nextInt(200);

  _ProductDetailCardState(this.product);
  @override
  Widget build(BuildContext context) {
    const sizedBoxHeiht = 12.0;
    final imageWidth = width(context) * 0.30;
    final imageHeight = height(context) * 0.32;
    return Container(
      padding: const EdgeInsets.only(top: 48.0),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: CachedNetworkImage(
                imageUrl: widget.product.imageUrl,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.fill),
          ),
          const SizedBox(height: sizedBoxHeiht * 10),
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
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      widget.product.name,
                      style: TextStyle(
                        fontSize: 14.0 * aspectRatioConstant(context),
                        fontFamily: 'Roboto',
                        color: const Color(0xFF212121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        RatingWidget(
                          rating: rating,
                          onRatingChanged: (rating) {},
                          color: Colors.black,
                        ),
                        Text(
                          "($reviews Reviews)",
                          style: TextStyle(
                            fontSize: 10.0 * aspectRatioConstant(context),
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
                  style: TextStyle(
                    fontSize: 12.0 * aspectRatioConstant(context),
                    fontFamily: 'Roboto',
                    color: const Color(0xFF212121),
                  ),
                ),
                const SizedBox(height: sizedBoxHeiht),
                Row(
                  children: [
                    Text(
                      widget.product.price,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0 * aspectRatioConstant(context),
                        fontFamily: 'Roboto',
                        color: const Color(0xFF212121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const IncrementOrDecrementWidget(
                      quantity: 1,
                    ),
                    const Spacer(),
                    AddToCart(
                      product: product,
                      quantity: 1,
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
