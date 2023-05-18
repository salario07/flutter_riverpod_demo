import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider<int> counterProvider = StateProvider<int>(
  (_) => 0,
);
