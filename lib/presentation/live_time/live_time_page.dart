import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/core/widgets/app_scaffold.dart';
import 'package:riverpod_demo/presentation/live_time/providers/clock_state_notifier_provider.dart';
import 'package:riverpod_demo/presentation/live_time/providers/date_format_provider.dart';

class LiveTimePage extends StatelessWidget {
  const LiveTimePage({super.key});

  @override
  Widget build(BuildContext context) => AppScaffold(
        title: 'Provider demo, Live time',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'DateTime is:',
            ),
            const SizedBox(height: 10),
            Consumer(
              builder: (context, ref, child) => Text(
                ref.read(formatterProvider).format(ref.watch(clockProvider)),
              ),
            ),
          ],
        ),
      );
}
