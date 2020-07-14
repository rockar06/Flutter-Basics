import 'package:flutter/material.dart';

class SampleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              semanticLabel: 'more',
            ),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () {
            var snackBar = SnackBar(
              content: Text("Building app..."),
              behavior: SnackBarBehavior.floating,
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
