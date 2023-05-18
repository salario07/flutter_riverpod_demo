import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/weather/list/providers/current_city_state_provider.dart';
import 'package:riverpod_demo/presentation/weather/list/widgets/weather_tile.dart';
import 'package:riverpod_demo/presentation/weather/models/city_weather.dart';

import 'providers/weather_list_provider.dart';

class WeatherListPage extends ConsumerWidget {
  const WeatherListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<CityWeather> weathers = ref.read(weatherListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Information'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        itemCount: weathers.length,
        itemBuilder: (BuildContext context, int index) => ProviderScope(
          overrides: [
            currentCityWeatherProvider.overrideWith((ref) => null),
          ],
          child: WeatherTile(cityWeather: weathers[index]),
        ),
      ),
    );
  }
}
