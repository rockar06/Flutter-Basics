import 'package:flutter/material.dart';
import 'package:fluttercourse/common/constants.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

const _containerText = "This is my sample container";

class SimpleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Container",
      body: Center(
        child: Container(
          // We can set a background color if we don't use a BoxDecoration
          //color: Colors.green,
          child: _getSimpleTextWidget(),
          // Define custom width for the widgets.container
          width: containerSize,
          // Define custom height for the widgets.container
          height: containerSize,
          // Align the child of widgets.container to the center
          alignment: Alignment.center,
          // How we can customize the color, shape, etc, of the widgets.container
          decoration: _getCustomBoxDecoration(),
        ),
      ),
    );
  }

  Text _getSimpleTextWidget() {
    return const Text(
      _containerText,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  BoxDecoration _getCustomBoxDecoration() {
    return BoxDecoration(
      color: Colors.green,
      border: _getBorderGrey(),
      borderRadius: _getRoundedBorder(),
      boxShadow: _getShadowForContainer(),
    );
  }

  Border _getBorderGrey() {
    return Border.all(color: Colors.blueGrey, width: spacing6);
  }

  BorderRadiusGeometry _getRoundedBorder() {
    return BorderRadius.all(Radius.circular(spacing12));
  }

  List<BoxShadow> _getShadowForContainer() {
    return [
      BoxShadow(
          offset: Offset(spacing2, spacing4),
          blurRadius: spacing10,
          spreadRadius: spacing1)
    ];
  }
}
