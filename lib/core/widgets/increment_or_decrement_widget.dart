import 'dart:math';

import 'package:flutter/material.dart';

class IncrementOrDecrementWidget extends StatefulWidget {
  final int quantity;
  const IncrementOrDecrementWidget({Key? key, required this.quantity})
      : super(key: key);

  @override
  State<IncrementOrDecrementWidget> createState() =>
      _IncrementOrDecrementWidgetState(quantity: quantity);
}

class _IncrementOrDecrementWidgetState
    extends State<IncrementOrDecrementWidget> {
  late int quantity;
  _IncrementOrDecrementWidgetState({required this.quantity});
  IconData plusIcon = Icons.add_circle;
  IconData minusIcon = Icons.remove_circle_outline;
  Color color = Colors.black.withOpacity(0.8);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Ink(child: Icon(minusIcon, color: color)),
          onTap: () {
            setState(() {
              if (quantity > 1) quantity -= 1;
            });
          },
        ),
        const SizedBox(width: 8.0),
        Text(
          quantity.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8.0),
        InkWell(
          child: Ink(child: Icon(plusIcon, color: color)),
          onTap: () {
            setState(() {
              quantity += 1;
            });
          },
        ),
      ],
    );
  }
}
