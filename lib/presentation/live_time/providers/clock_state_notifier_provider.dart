import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/live_time/providers/clock_state_notifier.dart';

final StateNotifierProvider<ClockStateNotifier, DateTime> clockProvider =
    StateNotifierProvider<ClockStateNotifier, DateTime>(
  (_) => ClockStateNotifier(),
);
