import 'package:flutter/material.dart';
import 'package:flutter_basics/common/constants.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';

class SimpleWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Wrap",
      body: Container(
        color: Colors.grey,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 20.0,
          alignment: WrapAlignment.center,
          direction: Axis.vertical,
          children: [
            _getBaseContainer(smallContainerSize, Colors.red),
            _getBaseContainer(mediumContainerSize, Colors.blue),
            _getBaseContainer(smallContainerSize, Colors.purple),
            _getBaseContainer(containerSize, Colors.yellow),
            _getBaseContainer(smallContainerSize, Colors.red),
            _getBaseContainer(mediumContainerSize, Colors.blue),
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
