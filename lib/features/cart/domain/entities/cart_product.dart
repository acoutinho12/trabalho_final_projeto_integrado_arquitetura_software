import 'package:equatable/equatable.dart';

typedef CartProducts = List<CartProduct>;

class CartProduct extends Equatable {
  const CartProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });

  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String price;
  final int quantity;

  @override
  List<Object?> get props => [id, name, description, imageUrl, price, quantity];
}
