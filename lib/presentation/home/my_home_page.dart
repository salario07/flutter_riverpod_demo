import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/presentation/core/widgets/app_scaffold.dart';
import 'package:riverpod_demo/presentation/home/widgets/menu_button_list_widget.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) =>
      AppScaffold(
        title: title,
        body: const MenuButtonListWidget(),
      );
}
