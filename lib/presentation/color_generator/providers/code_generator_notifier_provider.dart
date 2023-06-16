import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/color_generator/providers/code_generator_notifier.dart';

final colorProvider =
    AutoDisposeNotifierProvider<ColorGeneratorNotifier, Color>(
  ColorGeneratorNotifier.new,
);
