import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/auth/providers/login_use_case_provider.dart';
import 'package:riverpod_demo/presentation/auth/providers/logout_use_case_provider.dart';

class AuthAsyncNotifier extends AutoDisposeAsyncNotifier<String?> {
  String? username;

  @override
  FutureOr<String?> build() {
    return username;
  }

  void login(final String loggedInUsername) async {
    state = const AsyncLoading();
    final loginUseCase = ref.read(loginUseCaseProvider);
    state = await AsyncValue.guard(() => loginUseCase.call(loggedInUsername));
    state.when(
      data: (data) => username = data,
      error: (error, stackTrace) => username = null,
      loading: () => null,
    );
  }

  void logout() async {
    state = const AsyncLoading();
    final logoutUseCase = ref.read(logoutUseCaseProvider);
    state = await AsyncValue.guard(
      logoutUseCase.call,
    );
    state.when(
      data: (data) => username = data,
      error: (error, stackTrace) => null,
      loading: () => null,
    );
  }
}
