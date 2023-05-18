import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/color_generator_page/providers/color_change_value_provider.dart';

class ColorGeneratorNotifier extends AutoDisposeNotifier<Color> {
  ColorGeneratorNotifier() : super();

  void incrementRed() {
    final int red =
        state.red + _changeValue < 255 ? state.red + _changeValue : 255;
    state = Color.fromARGB(
      state.alpha,
      red,
      state.green,
      state.blue,
    );
    _cachedColor = state;
  }

  void decrementRed() {
    final int red = state.red - _changeValue > 0 ? state.red - _changeValue : 0;
    state = Color.fromARGB(
      state.alpha,
      red,
      state.green,
      state.blue,
    );
    _cachedColor = state;
  }

  void incrementBlue() {
    final int blue =
        state.blue + _changeValue < 255 ? state.blue + _changeValue : 255;
    state = Color.fromARGB(
      state.alpha,
      state.red,
      state.green,
      blue,
    );
    _cachedColor = state;
  }

  void decrementBlue() {
    final int blue =
        state.blue - _changeValue > 0 ? state.blue - _changeValue : 0;
    state = Color.fromARGB(
      state.alpha,
      state.red,
      state.green,
      blue,
    );
    _cachedColor = state;
  }

  void incrementGreen() {
    final int green =
        state.green + _changeValue < 255 ? state.green + _changeValue : 255;
    state = Color.fromARGB(
      state.alpha,
      state.red,
      green,
      state.blue,
    );
    _cachedColor = state;
  }

  void decrementGreen() {
    final int green =
        state.green - _changeValue > 0 ? state.green - _changeValue : 0;
    state = Color.fromARGB(
      state.alpha,
      state.red,
      green,
      state.blue,
    );
    _cachedColor = state;
  }

  int _changeValue = 0;
  Color? _cachedColor;

  @override
  Color build() {
    _changeValue = ref.read(colorChangeValue);
    return _cachedColor ?? Colors.lightBlueAccent;
  }
}
