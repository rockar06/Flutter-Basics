import 'package:flutter/material.dart';
import 'package:flutter_basics/common/constants.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';

class SimplePadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Padding",
      body: Padding(
        padding: EdgeInsets.all(spacing16),
        child: Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: _getChildContainer(),
        ),
      ),
    );
  }

  Widget _getChildContainer() {
    return Container(
      width: containerSize,
      height: containerSize,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(spacing4, spacing16, spacing8, spacing2),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
