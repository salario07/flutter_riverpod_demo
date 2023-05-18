import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/weather/details/weather_details_page.dart';
import 'package:riverpod_demo/presentation/weather/list/providers/current_city_state_provider.dart';
import 'package:riverpod_demo/presentation/weather/models/city_weather.dart';

class WeatherTile extends ConsumerWidget {
  final CityWeather cityWeather;

  const WeatherTile({
    required this.cityWeather,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => GestureDetector(
        onTap: () =>
            ref.read(currentCityWeatherProvider.notifier).state = cityWeather,
        child: Card(
          color: ref.watch(currentCityWeatherProvider)?.id == cityWeather.id
              ? Colors.blue.shade200
              : Colors.white,
          child: ListTile(
            title: Text(cityWeather.city),
            subtitle: Text('Temperature: ${cityWeather.temperature}°C'),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () => _pushPage(
                context,
                cityWeather.id,
              ),
            ),
          ),
        ),
      );

  Future<dynamic> _pushPage(
    BuildContext context,
    int id,
  ) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => WeatherDetailsPage(id: id),
        ),
      );
}
