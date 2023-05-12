import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/weather/models/city_weather.dart';

final Provider<List<CityWeather>> weatherListProvider =
    Provider<List<CityWeather>>((ref) => [
          const CityWeather(
            id: 1,
            city: 'New York',
            humidity: 10,
            temperature: 25,
          ),
          const CityWeather(
            id: 2,
            city: 'London',
            humidity: 10,
            temperature: 25,
          ),
          const CityWeather(
            id: 3,
            city: 'Paris',
            humidity: 10,
            temperature: 25,
          ),
          const CityWeather(
            id: 4,
            city: 'Tokyo',
            humidity: 10,
            temperature: 25,
          ),
          const CityWeather(
            id: 5,
            city: 'Sydney',
            humidity: 10,
            temperature: 25,
          ),
        ]);
