import 'package:flutter/material.dart';
import 'package:fluttercourse/common/constants.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SimpleMargin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Margin",
      body: Container(
        margin: EdgeInsets.only(left: spacing16, top: spacing16),
        padding: EdgeInsets.all(spacing16),
        color: Colors.red,
        width: containerSize,
        height: containerSize,
        child: Text(
          "Example text",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
