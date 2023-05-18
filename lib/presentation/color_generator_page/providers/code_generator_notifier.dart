import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorGeneratorNotifier extends AutoDisposeNotifier<Color> {
  ColorGeneratorNotifier() : super();

  void incrementRed() {
    final int red = state.red + _delta < 255 ? state.red + _delta : 255;
    state = Color.fromARGB(
      state.alpha,
      red,
      state.green,
      state.blue,
    );
    _cachedColor = state;
  }

  void decrementRed() {
    final int red = state.red - _delta > 0 ? state.red - _delta : 0;
    state = Color.fromARGB(
      state.alpha,
      red,
      state.green,
      state.blue,
    );
    _cachedColor = state;
  }

  void incrementBlue() {
    final int blue = state.blue + _delta < 255 ? state.blue + _delta : 255;
    state = Color.fromARGB(
      state.alpha,
      state.red,
      state.green,
      blue,
    );
    _cachedColor = state;
  }

  void decrementBlue() {
    final int blue = state.blue - _delta > 0 ? state.blue - _delta : 0;
    state = Color.fromARGB(
      state.alpha,
      state.red,
      state.green,
      blue,
    );
    _cachedColor = state;
  }

  void incrementGreen() {
    final int green = state.green + _delta < 255 ? state.green + _delta : 255;
    state = Color.fromARGB(
      state.alpha,
      state.red,
      green,
      state.blue,
    );
    _cachedColor = state;
  }

  void decrementGreen() {
    final int green = state.green - _delta > 0 ? state.green - _delta : 0;
    state = Color.fromARGB(
      state.alpha,
      state.red,
      green,
      state.blue,
    );
    _cachedColor = state;
  }

  final int _delta = 50;
  Color? _cachedColor;

  @override
  Color build() => _cachedColor ?? Colors.lightBlueAccent;
}
