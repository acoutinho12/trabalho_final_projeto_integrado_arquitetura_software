import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';

typedef OnValueChangeCallback = void Function(int quantity);

class IncrementOrDecrementWidget extends StatefulWidget {
  final int quantity;
  final OnValueChangeCallback onValueChangeCallback;
  const IncrementOrDecrementWidget({Key? key, required this.quantity, required this.onValueChangeCallback})
      : super(key: key);

  @override
  State<IncrementOrDecrementWidget> createState() =>
      IncrementOrDecrementWidgetState();
}

class IncrementOrDecrementWidgetState
    extends State<IncrementOrDecrementWidget> {
  late int quantity = widget.quantity;
  IconData plusIcon = Icons.add_circle;
  IconData minusIcon = Icons.remove_circle_outline;
  Color color = ColorConstants.primaryColor.withOpacity(0.8);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Ink(child: Icon(minusIcon, color: color)),
          onTap: () {
            setState(() {
              if (quantity > 1) quantity -= 1;
              widget.onValueChangeCallback(quantity);
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
              widget.onValueChangeCallback(quantity);
            });
          },
        ),
      ],
    );
  }
}
