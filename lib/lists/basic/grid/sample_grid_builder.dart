import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SampleGridBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Grid Builder",
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 20.0,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 6.0,
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
