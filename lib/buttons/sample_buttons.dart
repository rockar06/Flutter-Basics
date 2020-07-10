import 'package:flutter/material.dart';
import 'package:fluttercourse/common/constants.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SampleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Sample Buttons",
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text("Flat button"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(spacing12))),
                padding: EdgeInsets.all(spacing24),
                splashColor: Colors.deepOrange,
              ),
              _getVerticalSpace(),
              OutlineButton(
                onPressed: () {},
                child: Text("Outline Button"),
                borderSide: BorderSide(color: Colors.grey, width: spacing4),
                highlightedBorderColor: Colors.red,
              ),
              _getVerticalSpace(),
              RaisedButton(
                onPressed: () {},
                child: Text("Raised Button"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: spacing16,
                highlightElevation: spacing24,
              ),
              _getVerticalSpace(),
              IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
                color: Colors.green,
                iconSize: spacing48,
                splashRadius: spacing48,
              ),
              _getVerticalSpace(),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getVerticalSpace() {
    return SizedBox(
      height: 16.0,
    );
  }
}
