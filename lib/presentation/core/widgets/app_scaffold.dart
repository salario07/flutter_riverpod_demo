import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    required this.title,
    this.floatingActionButton,
    super.key,
  });

  final String title;
  final Widget body;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Center(
            child: body,
          ),
        ),
        appBar: AppBar(
          title: Text(title),
        ),
        floatingActionButton: floatingActionButton,
      );
}
