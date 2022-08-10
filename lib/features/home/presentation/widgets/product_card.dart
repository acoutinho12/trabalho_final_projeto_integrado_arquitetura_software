import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/routes/app_router.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/widgets/favorite_product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const sizedBoxHeiht = 12.0;
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(ProductDetailRoute(product: product));
      },
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
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CachedNetworkImage(
                  imageUrl: product.imageUrl,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
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
                      const FavoriteProduct()
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
