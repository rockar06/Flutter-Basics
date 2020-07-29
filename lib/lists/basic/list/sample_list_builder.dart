import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SampleListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'List Builder',
      body: ListView.builder(
        itemCount: 25,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.camera),
            title: Text('Item number: $index'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
