import 'package:flutter/material.dart';

class SampleIconBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Theme.of(context).primaryColor,
        child: Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
                onPressed: () {
                  var snackBar = SnackBar(
                    content: Text("Bulding app..."),
                    behavior: SnackBarBehavior.floating,
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Icon(Icons.add),
              )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
