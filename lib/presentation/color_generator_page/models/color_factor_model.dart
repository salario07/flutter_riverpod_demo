import 'package:flutter/material.dart';

class ColorFactorModel {
  final String colorName;
  final Color color;
  final void Function() onIncrement;
  final void Function() onDecrement;

  ColorFactorModel({
    required this.colorName,
    required this.color,
    required this.onIncrement,
    required this.onDecrement,
  });
}
