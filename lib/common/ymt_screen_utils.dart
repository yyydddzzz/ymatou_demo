
import 'package:flutter/cupertino.dart';

class ScreenUtils {
  final BuildContext context;

  ScreenUtils(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}