import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/auth/auth_page.dart';
import 'package:riverpod_demo/presentation/color_generator/color_generator_page.dart';
import 'package:riverpod_demo/presentation/counter/counter_page.dart';
import 'package:riverpod_demo/presentation/home/models/menu_button_model.dart';
import 'package:riverpod_demo/presentation/live_time/live_time_page.dart';
import 'package:riverpod_demo/presentation/salon_reviews/salon_reviews_page.dart';
import 'package:riverpod_demo/presentation/weather/details/weather_details_page.dart';
import 'package:riverpod_demo/presentation/weather/list/weather_list_page.dart';

final Provider<List<MenuButtonModel>> homeMenuButtonsProvider =
    Provider<List<MenuButtonModel>>(
  (_) => [
    MenuButtonModel(
      providerName: 'Provider',
      featureName: 'Weather list page',
      page: const WeatherListPage(),
    ),
    MenuButtonModel(
      providerName: 'Future provider',
      featureName: 'City weather details',
      page: const WeatherDetailsPage(),
    ),
    MenuButtonModel(
      providerName: 'Notifier provider',
      featureName: 'Color generator page',
      page: const ColorGeneratorPage(),
    ),
    MenuButtonModel(
      providerName: 'Async notifier provider',
      featureName: 'Auth page',
      page: const AuthPage(),
    ),
    MenuButtonModel(
      providerName: 'State notifier provider (legacy)',
      featureName: 'Live time',
      page: const LiveTimePage(),
    ),
    MenuButtonModel(
      providerName: 'State provider (legacy)',
      featureName: 'Counter',
      page: const CounterPage(),
    ),
    MenuButtonModel(
      providerName: 'Generator',
      featureName: 'Salon reviews',
      page: const SalonReviewsPage(),
    ),
  ],
);
