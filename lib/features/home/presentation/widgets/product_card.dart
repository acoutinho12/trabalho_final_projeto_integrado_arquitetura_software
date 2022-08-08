import 'package:flutter/material.dart';
import 'package:ollen/features/home/domain/entities/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Image.network(product.imageUrl,
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.height * 0.20,
                fit: BoxFit.fill),
            const SizedBox(height: 20),
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 16.0,
                fontFamily: 'Roboto',
                color: Color(0xFF212121),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              product.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12.0,
                fontFamily: 'Roboto',
                color: Color(0xFF212121),
              ),
            )
          ],
        ),
      ),
    );
  }
}
