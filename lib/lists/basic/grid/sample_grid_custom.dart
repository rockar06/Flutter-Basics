import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SampleGridCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Grid Custom',
      body: GridView.custom(
        //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0,
          childAspectRatio: 1,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Card(
              elevation: 6.0,
              color: Colors.blue,
            );
          },
          childCount: 25,
        ),
      ),
    );
  }
}
