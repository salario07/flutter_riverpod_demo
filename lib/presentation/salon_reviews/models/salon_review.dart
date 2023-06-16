import 'user.dart';

class SalonReview {
  final User user;
  final int rate;
  final String text;
  final DateTime createdDate;

  SalonReview({
    required this.user,
    required this.rate,
    required this.text,
    required this.createdDate,
  });
}
