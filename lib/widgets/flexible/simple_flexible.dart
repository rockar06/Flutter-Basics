import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SimpleFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Flexible",
      body: Column(
        children: [
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Container(
              height: 100.0,
              color: Colors.cyan,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
