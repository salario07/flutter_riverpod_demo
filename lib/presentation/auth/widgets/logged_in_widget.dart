import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/auth/providers/auth_async_notifier_provider.dart';

class LoggedInWidget extends ConsumerWidget {
  const LoggedInWidget({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) =>
      Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'You are logged in as ${ref.read(authAsyncNotifierProvider.notifier).username}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _logout(ref),
              child: const Text('Logout'),
            ),
          ],
        ),
      );

  void _logout(WidgetRef ref) =>
      ref.read(authAsyncNotifierProvider.notifier).logout();
}
