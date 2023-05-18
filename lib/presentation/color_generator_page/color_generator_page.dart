import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/color_generator_page/models/color_factor_model.dart';
import 'package:riverpod_demo/presentation/color_generator_page/providers/code_generator_notifier_provider.dart';
import 'package:riverpod_demo/presentation/color_generator_page/widgets/color_action_tile.dart';
import 'package:riverpod_demo/presentation/core/widgets/app_scaffold.dart';

class ColorGeneratorPage extends ConsumerWidget {
  const ColorGeneratorPage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) =>
      AppScaffold(
        title: 'Color Generator',
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: ref.watch(colorProvider),
              ),
              const SizedBox(height: 60),
              ColorActionsTile(
                model: ColorFactorModel(
                  color: Colors.red,
                  colorName: 'Red',
                  onIncrement: ref.read(colorProvider.notifier).incrementRed,
                  onDecrement: ref.read(colorProvider.notifier).decrementRed,
                ),
              ),
              const SizedBox(height: 16),
              ColorActionsTile(
                model: ColorFactorModel(
                  color: Colors.green,
                  colorName: 'Green',
                  onIncrement: ref.read(colorProvider.notifier).incrementGreen,
                  onDecrement: ref.read(colorProvider.notifier).decrementGreen,
                ),
              ),
              const SizedBox(height: 16),
              ColorActionsTile(
                model: ColorFactorModel(
                  color: Colors.blue,
                  colorName: 'Blue',
                  onIncrement: ref.read(colorProvider.notifier).incrementBlue,
                  onDecrement: ref.read(colorProvider.notifier).decrementBlue,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Code: ${ref.watch(colorProvider).value.toRadixString(16).padLeft(8, '0')}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      );
}
