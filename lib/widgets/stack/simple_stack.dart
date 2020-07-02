import 'package:flutter/material.dart';
import 'package:fluttercourse/common/constants.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SimpleStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Stack",
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            _getRedBox(),
            _getGreenBox(),
            _getBlueBox(),
            _getYellowBox(),
            Positioned(
              bottom: -70,
              right: -70,
              child: _getPinkBox(),
            ),
            Positioned(
              top: -70,
              child: _getGreyBox(),
            )
          ],
          overflow: Overflow.visible,
        ),
      ),
    );
  }

  Widget _getRedBox() {
    return _getBaseContainer(containerSize, Colors.red);
  }

  Widget _getGreenBox() {
    return _getBaseContainer(container180Size, Colors.green);
  }

  Widget _getBlueBox() {
    return _getBaseContainer(container160Size, Colors.blue);
  }

  Widget _getYellowBox() {
    return _getBaseContainer(container140Size, Colors.yellow);
  }

  Widget _getPinkBox() {
    return _getBaseContainer(container140Size, Colors.pink);
  }

  Widget _getGreyBox() {
    return _getBaseContainer(container140Size, Colors.grey);
  }

  Widget _getBaseContainer(double size, Color boxColor) {
    return Container(
      width: size,
      height: size,
      decoration: _getRoundedDecorationWithColor(boxColor),
    );
  }

  BoxDecoration _getRoundedDecorationWithColor(Color decorationColor) {
    return BoxDecoration(
        color: decorationColor,
        borderRadius: BorderRadius.all(Radius.circular(spacing10)));
  }
}
