import 'package:equatable/equatable.dart';

typedef WishListProducts = List<WishListProduct>;

class WishListProduct extends Equatable {
  const WishListProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String price;

  @override
  List<Object?> get props => [id, name, description, imageUrl, price];
}
