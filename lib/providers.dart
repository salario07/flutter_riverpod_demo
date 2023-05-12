import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/weather/models/city_weather.dart';

final StateProvider<int> counterProvider = StateProvider<int>(
  (_) => 0,
);

final StateProvider<CityWeather?> currentCityWeatherProvider =
    StateProvider<CityWeather?>(
  (_) => throw UnimplementedError(),
);
