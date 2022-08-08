import 'package:flutter/material.dart';

class FavoriteProduct extends StatefulWidget {
  const FavoriteProduct({Key? key}) : super(key: key);

  @override
  State<FavoriteProduct> createState() => _FavoriteProductState();
}

class _FavoriteProductState extends State<FavoriteProduct> {
  bool isFavorite = false;
  IconData icon = Icons.favorite_outline;
  Color color = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
            icon = isFavorite ? Icons.favorite : Icons.favorite_outline;
            color = isFavorite ? Colors.red : Colors.grey;
          });
        },
        icon: Icon(icon,
            color: color));
  }
}
