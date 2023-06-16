import 'package:flutter/material.dart';
import 'package:riverpod_demo/presentation/color_generator/models/color_factor_model.dart';

class ColorActionsTile extends StatelessWidget {
  final ColorFactorModel model;

  const ColorActionsTile({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        child: Row(
          children: [
            Text(
              model.colorName,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: model.color,
                  ),
            ),
            const Spacer(),
            IconButton(
              onPressed: model.onIncrement,
              style: IconButton.styleFrom(
                backgroundColor: model.color,
              ),
              icon: Icon(
                Icons.add,
                size: 30,
                color: model.color,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: model.onDecrement,
              style: IconButton.styleFrom(backgroundColor: model.color),
              icon: Icon(
                Icons.remove,
                size: 30,
                color: model.color,
              ),
            ),
          ],
        ),
      );
}
