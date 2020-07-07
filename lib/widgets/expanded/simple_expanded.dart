import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SimpleExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Expanded",
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            _getColoredContainer(Colors.cyan),
            Expanded(
              flex: 1,
              child: _getColoredContainer(Colors.orange),
            ),
            _getColoredContainer(Colors.lightGreen),
            Expanded(
              flex: 3,
              child: _getColoredContainer(Colors.teal),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getColoredContainer(Color color) {
    return Container(
      height: 100,
      color: color,
    );
  }
}
