import 'package:flutter/material.dart';
import 'package:flutter_basics/common/constants.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';

const semanticMessageLabel = 'Describing text for the icon';

class SimpleIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Simple Icon",
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(
              Icons.message,
              color: Colors.blue,
              size: spacing24,
              semanticLabel: semanticMessageLabel,
            ),
            Icon(
              Icons.play_arrow,
              color: Colors.green,
              size: spacing36,
            ),
            Icon(
              Icons.camera_alt,
              color: Colors.red,
              size: spacing48,
            ),
          ],
        ),
      ),
    );
  }
}
