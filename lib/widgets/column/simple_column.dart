import 'package:flutter/material.dart';
import 'package:flutter_basics/common/constants.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';

class SimpleColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Column",
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getBaseContainer(smallContainerSize, Colors.red),
            _getBaseContainer(mediumContainerSize, Colors.green),
            _getBaseContainer(containerSize, Colors.blue),
            _getBaseContainer(mediumContainerSize, Colors.pink),
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
