import 'package:flutter/material.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';
import 'package:flutter_basics/http/sample_get_data.dart';
import 'package:flutter_basics/http/sample_send_data.dart';

class MenuHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Menu http",
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Get Data"),
                onPressed: () => _goToHttpSection(
                  context,
                  SampleGetData(),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              RaisedButton(
                child: Text("Send Data"),
                onPressed: () => _goToHttpSection(
                  context,
                  SampleSendData(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _goToHttpSection(BuildContext context, Widget widgetToGo) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widgetToGo;
      },
    ));
  }
}
