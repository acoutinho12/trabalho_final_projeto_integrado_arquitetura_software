import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/features/home/domain/entities/product.dart';
import 'package:ollen/features/wish_list/domain/entities/wish_list_product.dart';
import 'package:ollen/features/wish_list/presentation/bloc/wish_list_bloc.dart';

class FavoriteProduct extends StatefulWidget {
  final Product product;
  final WishListBloc wishListBloc;
  final bool isFavorite;
  const FavoriteProduct(
      {Key? key,
      required this.product,
      required this.wishListBloc,
      required this.isFavorite})
      : super(key: key);

  @override
  State<FavoriteProduct> createState() => _FavoriteProductState();
}

class _FavoriteProductState extends State<FavoriteProduct> {
  late bool _isFavorite = widget.isFavorite;
  IconData favoriteIcon = Icons.favorite;
  Color iconColor = Colors.white;
  Color circleAvatarBackgroundColor = ColorConstants.primaryColor;
  double _size = 16;

  @override
  void initState() {
    super.initState();
    _setCircleAvatarBackgroundColor();
    _setFavoriteIconProperties();
  }

  void _setFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      _setCircleAvatarBackgroundColor();
      _setFavoriteIconProperties();
    });
  }

  void _setCircleAvatarBackgroundColor() {
    circleAvatarBackgroundColor =
        _isFavorite ? ColorConstants.primaryColor : Colors.transparent;
  }

  void _setFavoriteIconProperties() {
    favoriteIcon = _isFavorite ? Icons.favorite : Icons.favorite_outline;
    iconColor = _isFavorite ? Colors.white : ColorConstants.primaryColor;
    _size = _isFavorite ? 16 : 24;
  }

  void _addToWishList() {
    WishListProduct wishListProduct = _createWishListProduct(widget.product);
    widget.wishListBloc
        .add(WishListEvent.addToWishList(wishListProduct: wishListProduct));
    _setFavorite();
    _showSnackBar();
  }

  void _showSnackBar() {
    final String productName = widget.product.name;
    final SnackBar snackBar = SnackBar(
      content: Text(
        "$productName ${_isFavorite ? 'Adicionado aos' : 'Removido dos'} favoritos",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  WishListProduct _createWishListProduct(Product product) => WishListProduct(
      id: widget.product.id,
      name: widget.product.name,
      description: widget.product.description,
      imageUrl: widget.product.imageUrl,
      price: widget.product.price);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _addToWishList,
      child: CircleAvatar(
        radius: _size,
        backgroundColor: circleAvatarBackgroundColor,
        child: Icon(
          favoriteIcon,
          color: iconColor,
          size: _size,
        ),
      ),
    );
  }
}
