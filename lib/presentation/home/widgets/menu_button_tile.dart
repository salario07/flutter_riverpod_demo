import 'package:flutter/material.dart';
import 'package:riverpod_demo/presentation/home/models/menu_button_model.dart';

class MenuButtonTile extends StatelessWidget {
  final MenuButtonModel model;

  const MenuButtonTile({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => _pushPage(context),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  model.providerName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  model.featureName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      );

  Future<dynamic> _pushPage(
    BuildContext context,
  ) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => model.page,
        ),
      );
}
