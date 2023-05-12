import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/weather/list/providers/weather_list_provider.dart';
import 'package:riverpod_demo/presentation/weather/models/city_weather.dart';

bool isWeatherFirstTimeLoad = true;

final AutoDisposeFutureProviderFamily<CityWeather, int?>
    weatherDetailsProvider =
    FutureProvider.autoDispose.family<CityWeather, int?>(
  (ref, id) async {
    final List<CityWeather> weatherList = ref.read(weatherListProvider);
    ref.onDispose(() {});
    await Future.delayed(const Duration(seconds: 2));
    if (isWeatherFirstTimeLoad) {
      isWeatherFirstTimeLoad = false;
      throw const FormatException();
    } else {
      isWeatherFirstTimeLoad = false;
      return id != null
          ? weatherList.firstWhere((element) => element.id == id)
          : weatherList.first;
    }
  },
);
