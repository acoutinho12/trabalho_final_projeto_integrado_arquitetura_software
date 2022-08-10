import 'package:flutter/material.dart';

class DeleteFromCartButton extends StatefulWidget {
  const DeleteFromCartButton({Key? key}) : super(key: key);

  @override
  State<DeleteFromCartButton> createState() => _DeleteFromCartButtonState();
}

class _DeleteFromCartButtonState extends State<DeleteFromCartButton> {
  IconData icon = Icons.close;
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Ink(child: Icon(icon, color: color)),
      onTap: () {},
    );
  }
}
