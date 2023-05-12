import 'package:flutter/material.dart';

class RetryWidget extends StatelessWidget {
  const RetryWidget({
    required this.onRetry,
    super.key,
  });

  final void Function() onRetry;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Error happened'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('retry'),
          ),
        ],
      );
}
