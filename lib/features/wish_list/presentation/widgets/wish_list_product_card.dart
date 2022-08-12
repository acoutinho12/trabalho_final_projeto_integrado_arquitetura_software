import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/presentation/bloc/wish_list_bloc.dart';

class WishListProductCard extends StatefulWidget {
  final WishListProduct wishListProduct;
  final WishListBloc wishListBloc;
  const WishListProductCard(
      {Key? key, required this.wishListProduct, required this.wishListBloc})
      : super(key: key);

  @override
  WishListProductCardState createState() => WishListProductCardState();
}

class WishListProductCardState extends State<WishListProductCard> {
  static const sizedBoxHeiht = 12.0;
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
                          imageUrl: widget.wishListProduct.imageUrl,
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
                        widget.wishListProduct.name,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Roboto',
                          color: ColorConstants.textPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: sizedBoxHeiht),
                      Text(
                        widget.wishListProduct.description,
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
                        widget.wishListProduct.price,
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
              ],
            ),
          ),
        ),
        const SizedBox(height: sizedBoxHeiht),
      ],
    );
  }
}
