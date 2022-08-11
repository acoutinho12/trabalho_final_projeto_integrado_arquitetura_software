import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ollen/core/utils/media_query.dart';

void onAction() {}

class EmptyPage extends StatefulWidget {
  final void Function()? action;
  final String message;
  const EmptyPage({Key? key, this.action = onAction, required this.message})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return EmptyPageState();
  }
}

class EmptyPageState extends State<EmptyPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context),
      child: Center(
        child: GestureDetector(
          onTap: widget.action,
          child: Column(
            children: [
              Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_hdReMa.json',
                  repeat: true,
                  animate: true,
                  reverse: true,
                  width: 300,
                  height: 300),
              const Icon(Icons.refresh),
              const SizedBox(
                height: 12,
              ),
              Text(widget.message)
            ],
          ),
        ),
      ),
    );
  }
}
