import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final Provider<DateFormat> formatterProvider = Provider<DateFormat>(
  (_) => DateFormat.Hms(),
);
