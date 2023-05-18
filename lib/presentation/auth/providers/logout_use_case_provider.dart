import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/auth/use_cases/logout_use_case.dart';

final logoutUseCaseProvider = Provider.autoDispose<LogoutUseCase>(
  (_) => LogoutUseCase(),
);
