import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/home/models/menu_button_model.dart';
import 'package:riverpod_demo/presentation/home/providers/menu_button_list_provider.dart';
import 'package:riverpod_demo/presentation/home/widgets/menu_button_tile.dart';

class MenuButtonListWidget extends ConsumerWidget {
  const MenuButtonListWidget({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final List<MenuButtonModel> menuButtons = ref.read(homeMenuButtonsProvider);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1 / 1.3),
      padding: const EdgeInsets.all(20),
      itemCount: menuButtons.length,
      itemBuilder: (context, index) => MenuButtonTile(
        model: menuButtons.elementAt(
          index,
        ),
      ),
    );
  }
}
