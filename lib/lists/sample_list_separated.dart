import 'package:flutter/material.dart';
import 'package:fluttercourse/common/custom_scaffold.dart';

class SampleListSeparated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "List Separated",
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item number: $index"),
              onTap: () {},
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: 25),
    );
  }
}
