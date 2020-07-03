import 'package:flutter/material.dart';
import 'package:fluttercourse/common/constants.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SimpleRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Row",
      body: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          // Setting the size the row will take in the horizontal axis
          //mainAxisSize: MainAxisSize.min,
          children: [
            _getBaseContainer(smallContainerSize, Colors.green),
            //_getBaseContainer(smallContainerSize, Colors.blue),
            _getBaseContainer(mediumContainerSize, Colors.blue),
            _getBaseContainer(smallContainerSize, Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _getBaseContainer(double size, Color boxColor) {
    return Container(
      width: size,
      height: size,
      color: boxColor,
    );
  }
}
