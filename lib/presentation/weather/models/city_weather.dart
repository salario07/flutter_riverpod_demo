class CityWeather {
  final int id;
  final String city;
  final double temperature;
  final double humidity;

  const CityWeather({
    required this.id,
    required this.city,
    required this.temperature,
    required this.humidity,
  });

  @override
  String toString() {
    return '$id-$city: $temperature °C';
  }
}
