import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SampleSimpleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Simple Grid',
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(8.0),
        children: List.generate(
          25,
          (index) => Card(
            elevation: 6.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
