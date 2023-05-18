import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/core/widgets/app_scaffold.dart';
import 'package:riverpod_demo/presentation/core/widgets/retry_widget.dart';
import 'package:riverpod_demo/presentation/weather/details/providers/weather_details_future_provider.dart';

class WeatherDetailsPage extends ConsumerWidget {
  const WeatherDetailsPage({
    this.id,
    super.key,
  });

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) => AppScaffold(
        title: 'Future provider demo',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Weather is:',
            ),
            const SizedBox(height: 10),
            ref.watch(weatherDetailsProvider(id ?? 1)).when(
                  skipLoadingOnRefresh: false,
                  data: (data) => Text(data.toString()),
                  error: (_, __) => RetryWidget(
                    onRetry: () => ref.refresh(weatherDetailsProvider(id ?? 1)),
                  ),
                  loading: () => const CircularProgressIndicator(),
                ),
          ],
        ),
      );
}
