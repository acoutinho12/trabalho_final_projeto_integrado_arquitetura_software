import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

import 'delete_from_cart_button.dart';
import '../../../../widgets/increment_or_decrement_widget.dart';

class CartProductsCard extends StatefulWidget {
  final Product product;
  const CartProductsCard({Key? key, required this.product}) : super(key: key);

  @override
  _CartProductsCardState createState() => _CartProductsCardState(product);
}

class _CartProductsCardState extends State<CartProductsCard> {
  final Product product;
  static const sizedBoxHeiht = 12.0;

  _CartProductsCardState(this.product);
  @override
  Widget build(BuildContext context) {
    final imageHeight = height(context) * 0.175;
    final imageWidth = width(context) * 0.18;
    return Column(
      children: [
        Container(
          width: width(context),
          height: height(context) * 0.20,
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
              border: Border.all(color: Colors.black.withOpacity(0.6), width: 0.5)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CachedNetworkImage(
                          imageUrl: product.imageUrl,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          width: imageWidth,
                          height: imageHeight,
                          fit: BoxFit.fill),
                    ],
                  ),
                ),
                const SizedBox(height: sizedBoxHeiht),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 14.0 * aspectRatioConstant(context),
                          fontFamily: 'Roboto',
                          color: const Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: sizedBoxHeiht),
                      Text(
                        product.description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.0 * aspectRatioConstant(context),
                          fontFamily: 'Roboto',
                          color: const Color(0xFF212121),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        product.price,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.0 * aspectRatioConstant(context),
                          fontFamily: 'Roboto',
                          color: const Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    DeleteFromCartButton(),
                    Spacer(),
                    IncrementOrDecrementWidget(
                      quantity: 1,
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
