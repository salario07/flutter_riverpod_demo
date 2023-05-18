import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/color_generator_page/color_generator_page.dart';
import 'package:riverpod_demo/presentation/counter/counter_page.dart';
import 'package:riverpod_demo/presentation/home/models/menu_button_model.dart';
import 'package:riverpod_demo/presentation/live_time/live_time_page.dart';
import 'package:riverpod_demo/presentation/weather/details/weather_details_page.dart';
import 'package:riverpod_demo/presentation/weather/list/weather_list_page.dart';

final Provider<List<MenuButtonModel>> homeMenuButtonsProvider =
    Provider<List<MenuButtonModel>>(
  (ref) => [
    MenuButtonModel(
      providerName: 'StateNotifier\nStateNotifierProvider',
      featureName: 'Live time',
      page: const LiveTimePage(),
    ),
    MenuButtonModel(
      providerName: 'Future provider',
      featureName: 'City weather details',
      page: const WeatherDetailsPage(),
    ),
    MenuButtonModel(
      providerName: 'Provider',
      featureName: 'Weather list page',
      page: const WeatherListPage(),
    ),
    MenuButtonModel(
      providerName: 'State provider',
      featureName: 'Counter',
      page: const CounterPage(),
    ),
    MenuButtonModel(
      providerName: 'Notifier provider',
      featureName: 'Color generator page',
      page: const ColorGeneratorPage(),
    ),
  ],
);
