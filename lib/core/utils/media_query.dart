import 'package:flutter/widgets.dart';

double width(BuildContext context) => MediaQuery.of(context).size.width;
double height(BuildContext context) => MediaQuery.of(context).size.height;

double aspectRatioConstant(context) => (width(context) / height(context)) * 2.5;
