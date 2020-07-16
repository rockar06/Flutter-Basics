import 'package:flutter/material.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';

class TextSimpleRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Text in Row",
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.rtl,
        children: [_getCustomText(40.0), _getCustomText(20.0)],
      ),
    );
  }

  Widget _getCustomText(double fontSize) {
    return Container(
      color: Colors.red,
      child: Text(
        "Flutter",
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
