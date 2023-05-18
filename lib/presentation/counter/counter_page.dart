import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/core/widgets/app_scaffold.dart';
import 'package:riverpod_demo/presentation/counter/providers/counter_state_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => AppScaffold(
        title: 'Counter page',
        floatingActionButton: FloatingActionButton(
          onPressed: () => ref.read(counterProvider.notifier).state++,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            const SizedBox(height: 10),
            Consumer(
              builder: (context, ref, child) => Text(
                (ref.watch(counterProvider)).toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      );
}
