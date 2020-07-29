import 'package:flutter/material.dart';

class SampleBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Bottom Sheet'),
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () => _showModalBottomSheet(context),
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      //showBottomSheet(
      context: context,
      builder: (BuildContext buildContext) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: 1,
          minChildSize: 0.25,
          builder: (context, scrollController) {
            return Container(
              child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                      leading: Icon(Icons.camera_alt),
                    );
                  }),
            );
          },
        );
      },
    );
  }
}
