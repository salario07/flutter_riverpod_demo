import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.child,
    required this.title,
    super.key,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(child: child),
        appBar: AppBar(
          title: Text(title),
        ),
      );
}
