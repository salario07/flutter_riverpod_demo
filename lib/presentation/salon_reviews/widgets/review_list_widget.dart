import 'package:flutter/material.dart';
import 'package:riverpod_demo/presentation/salon_reviews/models/salon_review.dart';
import 'package:riverpod_demo/presentation/salon_reviews/widgets/review_tile.dart';

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({
    required this.reviews,
    super.key,
  });

  final List<SalonReview> reviews;

  @override
  Widget build(final BuildContext context) => reviews.isNotEmpty
      ? ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(30),
          itemCount: reviews.length,
          itemBuilder: (final context, final index) => Padding(
            padding: EdgeInsets.only(
              top: index == 0 ? 0 : 32,
            ),
            child: ReviewTile(
              review: reviews.elementAt(
                index,
              ),
            ),
          ),
        )
      : const Text(
          'No reviews found',
        );
}
