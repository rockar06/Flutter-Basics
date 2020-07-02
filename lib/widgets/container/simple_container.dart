import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

const _boxSize = 200.0;
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
          width: _boxSize,
          // Define custom height for the widgets.container
          height: _boxSize,
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
    return Border.all(color: Colors.blueGrey, width: 6.0);
  }

  BorderRadiusGeometry _getRoundedBorder() {
    return BorderRadius.all(Radius.circular(12.0));
  }

  List<BoxShadow> _getShadowForContainer() {
    return [
      BoxShadow(offset: Offset(2.0, 4.0), blurRadius: 10.0, spreadRadius: 1.0)
    ];
  }
}
