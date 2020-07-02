import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

const _padding2 = 2.0;
const _padding4 = 4.0;
const _padding8 = 8.0;
const _padding16 = 16.0;
const _containerSize = 200.0;

class SimplePadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Padding",
      body: Padding(
        padding: EdgeInsets.all(_padding16),
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
      width: _containerSize,
      height: _containerSize,
      color: Colors.white,
      child: Padding(
        padding:
            EdgeInsets.fromLTRB(_padding4, _padding16, _padding8, _padding2),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
