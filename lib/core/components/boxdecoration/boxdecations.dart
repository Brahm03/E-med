import 'package:flutter/material.dart';

class BoxOnlyDecoration {
  static decor(
    Color color, {
    double topLeft = 0,
    double bottomLeft = 0,
    double topRight = 0,
    double bottomRight = 0,
  }) =>
      BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight),
          ),
          border: Border.all(color: Colors.grey));
}
