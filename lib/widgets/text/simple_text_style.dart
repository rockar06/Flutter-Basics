import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

const smallText = 'This is a sample Text';
const fontSize = 30.0;
const height = 45.0;

class SimpleTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: 'Simple Text Style',
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _getContainerWithText(FontWeight.w100),
              _getContainerWithText(FontWeight.w200),
              _getContainerWithText(FontWeight.w300),
              _getContainerWithText(FontWeight.w400),
              _getContainerWithText(FontWeight.w400,
                  fontStyle: FontStyle.italic),
              _getContainerWithText(FontWeight.w500),
              _getContainerWithText(FontWeight.w600),
              _getContainerWithText(FontWeight.w700),
              _getContainerWithText(FontWeight.w800),
              _getContainerWithText(FontWeight.w900),
            ],
          ),
        ));
  }

  Widget _getContainerWithText(FontWeight fontWeight,
      {FontStyle fontStyle = FontStyle.normal}) {
    return Container(
      height: height,
      child: Center(
          child: Text(
        smallText,
        style: TextStyle(
            fontFamily: 'MixFonts',
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontStyle: fontStyle),
      )),
    );
  }
}
