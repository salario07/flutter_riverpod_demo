import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/auth/providers/auth_async_notifier_provider.dart';
import 'package:riverpod_demo/presentation/auth/widgets/logged_in_widget.dart';
import 'package:riverpod_demo/presentation/auth/widgets/login_widget.dart';
import 'package:riverpod_demo/presentation/core/widgets/app_scaffold.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final AsyncValue<String?> username = ref.watch(authAsyncNotifierProvider);
    return AppScaffold(
      body: username.when(
        data: (data) =>
            data == null ? const LoginWidget() : const LoggedInWidget(),
        error: (error, stackTrace) => const Text('Error happened'),
        loading: () => const CircularProgressIndicator(),
      ),
      title: 'Auth page',
    );
  }
}
