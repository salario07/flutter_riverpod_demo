import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/live_time/live_time_page.dart';
import 'package:riverpod_demo/presentation/weather/details/weather_details_page.dart';
import 'package:riverpod_demo/presentation/weather/list/weather_list_page.dart';
import 'package:riverpod_demo/providers.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _pushPage(
                const LiveTimePage(),
                context,
              ),
              child: const Text('Provider demo - Live time'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _pushPage(
                const WeatherDetailsPage(),
                context,
              ),
              child: const Text('Future provider demo - City weather details'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WeatherListPage(),
                ),
              ),
              child: const Text('Weather list page'),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 40),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<dynamic> _pushPage(
    Widget widget,
    BuildContext context,
  ) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => widget,
        ),
      );
}
