import 'package:flutter/material.dart';
import 'package:fluttercourse/common/constants.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SimpleAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Align",
      // Align is taking all space in the body of the Scaffold
      body: Align(
        child: _getSimpleContainerWithText(),
        alignment: Alignment(-0.25, -0.25),
        // Predefined values for Alignment
        // alignment: Alignment.topLeft,
        // alignment: Alignment.topRight,
        // alignment: Alignment.topCenter,
        // alignment: Alignment.centerLeft,
        // alignment: Alignment.centerRight,
        // alignment: Alignment.center,
        // alignment: Alignment.bottomLeft,
        // alignment: Alignment.bottomRight,
        // alignment: Alignment.bottomCenter,
      ),
    );
  }

  Widget _getSimpleContainerWithText() {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(spacing16),
      child: Text(
        "Sample text",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
