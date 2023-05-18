import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/auth/providers/auth_async_notifier.dart';

final authAsyncNotifierProvider =
    AsyncNotifierProvider.autoDispose<AuthAsyncNotifier, String?>(
  AuthAsyncNotifier.new,
);
