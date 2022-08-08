import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ollen/core/utils/media_query.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/home/presentation/widgets/favorite_product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);
  static const _sizedBoxHeiht = 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CachedNetworkImage(
              imageUrl: product.imageUrl,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: width(context) * 0.18,
              height: height(context) * 0.20,
              fit: BoxFit.fill),
          const SizedBox(height: _sizedBoxHeiht),
          Text(
            product.name,
            style: const TextStyle(
              fontSize: 14.0,
              fontFamily: 'Roboto',
              color: Color(0xFF212121),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: _sizedBoxHeiht),
          Text(
            product.description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12.0,
              fontFamily: 'Roboto',
              color: Color(0xFF212121),
            ),
          ),
          Row(
            children: [
              Text(
                product.price,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Roboto',
                  color: Color(0xFF212121),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const FavoriteProduct()
            ],
          ),
        ],
      ),
    );
  }
}
