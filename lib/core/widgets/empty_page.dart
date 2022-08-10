import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ollen/core/utils/media_query.dart';

void onAction() {}

class EmptyPage extends StatefulWidget {
  final void Function()? action;
  const EmptyPage({Key? key, this.action = onAction}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EmptyPage(action: action);
  }
}

class _EmptyPage extends State<EmptyPage> {
  final void Function()? action;

  _EmptyPage({this.action = onAction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context),
      child: Center(
        child: GestureDetector(
          onTap: action,
          child: Column(
            children: [
              Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_v4d0iG.json',
                  repeat: true,
                  animate: true,
                  reverse: true,
                  width: 300,
                  height: 300),
              const Icon(Icons.refresh),
              const SizedBox(height: 12,),
              const Text("Nenhum produto encontrado")
            ],
          ),
        ),
      ),
    );
  }
}
