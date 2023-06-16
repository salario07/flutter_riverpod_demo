import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/core/widgets/app_scaffold.dart';
import 'package:riverpod_demo/presentation/salon_reviews/providers/salon_review_providers.dart';
import 'package:riverpod_demo/presentation/salon_reviews/widgets/review_list_widget.dart';

import 'models/salon_review.dart';

class SalonReviewsPage extends ConsumerWidget {
  const SalonReviewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<SalonReview>> result =
        ref.watch<AsyncValue<List<SalonReview>>>(fetchReviewsProvider);
    return AppScaffold(
      body: result.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => const Text('Error happened'),
        data: (data) => ReviewListWidget(reviews: data),
      ),
      title: 'Salon Review',
    );
  }
}
