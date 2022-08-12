import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/utils/navigate.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/widgets/favorite_product.dart';
import 'package:ollen/features/wish_list/presentation/bloc/wish_list_bloc.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final WishListBloc wishListBloc;
  final List<int> favoriteIds;
  const ProductCard(
      {Key? key,
      required this.product,
      required this.wishListBloc,
      required this.favoriteIds})
      : super(key: key);

  bool _isFavorite() {
    return favoriteIds.any((element) => element == product.id);
  }

  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate(context);
    void _goToProductDetailsPage() {
      navigate.toProductDetails(product: product);
    }

    const sizedBoxHeiht = 12.0;
    return GestureDetector(
      onTap: _goToProductDetailsPage,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.6),
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: const Offset(
                3.0,
                3.0,
              ),
            )
          ],
          color: ColorConstants.appColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CachedNetworkImage(
                  imageUrl: product.imageUrl,
                  placeholder: (context, url) => const Icon(Icons.photo),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.fill),
            ),
            const SizedBox(height: sizedBoxHeiht),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    product.name,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Roboto',
                      color: ColorConstants.textPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: sizedBoxHeiht),
                  Text(
                    product.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Roboto',
                      color: ColorConstants.textPrimaryColor,
                    ),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Text(
                        product.price,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Roboto',
                          color: ColorConstants.textPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      FavoriteProduct(
                          product: product,
                          wishListBloc: wishListBloc,
                          isFavorite: _isFavorite())
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
