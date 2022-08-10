import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/routes/app_router.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/widgets/favorite_product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const sizedBoxHeiht = 12.0;
    final imageWidth = width(context) * 0.12;
    final imageHeight = height(context) * 0.15;
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CachedNetworkImage(
                imageUrl: product.imageUrl,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.fill),
            const SizedBox(height: sizedBoxHeiht),
            Text(
              product.name,
              maxLines: 2,
              style: TextStyle(
                fontSize: 12.0 * aspectRatioConstant(context),
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
                fontSize: 10.0 * aspectRatioConstant(context),
                fontFamily: 'Roboto',
                color: const Color(0xFF212121),
              ),
            ),
            Row(
              children: [
                Text(
                  product.price,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14.0 * aspectRatioConstant(context),
                    fontFamily: 'Roboto',
                    color: const Color(0xFF212121),
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
    );
  }
}
