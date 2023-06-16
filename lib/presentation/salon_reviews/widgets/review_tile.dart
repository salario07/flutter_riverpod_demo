import 'package:flutter/material.dart';

import '../models/salon_review.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    required this.review,
    super.key,
  });

  final SalonReview review;

  @override
  Widget build(final BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.person,
                size: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '''${review.user.firstName} ${review.user.lastName.substring(0, 1).toUpperCase()}''',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    review.createdDate.toString(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            review.text,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      );
}
