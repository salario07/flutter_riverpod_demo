import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/auth/use_cases/login_use_case.dart';

final loginUseCaseProvider = Provider.autoDispose<LoginUseCase>(
  (_) => LoginUseCase(),
);
