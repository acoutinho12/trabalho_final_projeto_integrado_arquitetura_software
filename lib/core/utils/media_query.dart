import 'package:flutter/widgets.dart';

double width(BuildContext context) => MediaQuery.of(context).size.width;
double height(BuildContext context) => MediaQuery.of(context).size.height;

double aspectRatioConstant(context) => (MediaQuery.of(context).devicePixelRatio/4.5);
