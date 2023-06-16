import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/presentation/salon_reviews/models/salon_review.dart';

import '../models/user.dart';

part 'salon_review_providers.g.dart';

@riverpod
Future<List<SalonReview>> fetchReviews(FetchReviewsRef ref) async {
  await Future.delayed(const Duration(seconds: 2));
  return [
    SalonReview(
      rate: 4,
      createdDate: DateTime.now(),
      text: 'Excellent experience',
      user: User(
        avatar: 'assets/images/girl.png',
        firstName: 'Muiris',
        lastName: 'Managan',
      ),
    ),
    SalonReview(
      rate: 4,
      createdDate: DateTime.now(),
      text: 'Excellent experience',
      user: User(
        avatar: 'assets/images/girl.png',
        firstName: 'Muiris',
        lastName: 'Managan',
      ),
    ),
    SalonReview(
      rate: 4,
      createdDate: DateTime.now(),
      text: 'Excellent experience',
      user: User(
        avatar: 'assets/images/girl.png',
        firstName: 'Muiris',
        lastName: 'Managan',
      ),
    ),
    SalonReview(
      rate: 4,
      createdDate: DateTime.now(),
      text:
          'I recently visited this salon for a haircut and I must say, it was a terrible experience. The stylist seemed uninterested in what I wanted and ended up giving me a completely different haircut than what I asked for. The salon itself was also dirty and unorganized, which made me feel uncomfortable throughout the entire appointment. Overall, I would not recommend this salon to anyone looking for a quality haircut or pleasant experience.',
      user: User(
        avatar: 'assets/images/girl.png',
        firstName: 'Muiris',
        lastName: 'Managan',
      ),
    ),
    ...List.generate(
      100,
      (index) => SalonReview(
        rate: 4,
        createdDate: DateTime.now(),
        text: 'Excellent experience',
        user: User(
          avatar: 'assets/images/girl.png',
          firstName: 'Muiris',
          lastName: 'Managan',
        ),
      ),
    ),
  ];
}
