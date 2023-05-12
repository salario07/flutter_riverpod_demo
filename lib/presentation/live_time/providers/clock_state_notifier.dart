import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClockStateNotifier extends StateNotifier<DateTime> {
  ClockStateNotifier() : super(DateTime.now()) {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = DateTime.now();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  late final Timer timer;
}
