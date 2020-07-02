import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final FloatingActionButton floatingActionButton;

  const CustomScaffold(
      {@required this.title, @required this.body, this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
