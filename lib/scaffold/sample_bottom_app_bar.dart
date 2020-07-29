import 'package:flutter/material.dart';

class SampleBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(),
      floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
                onPressed: () {
                  var snackBar = SnackBar(
                    content: Text('Bulding app...'),
                    behavior: SnackBarBehavior.floating,
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Icon(Icons.add),
              )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      shape: CircularNotchedRectangle(),
      child: Row(
        children: [
          BottomAppBarItem(
              onPressed: () {},
              buttonIcon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              text: 'Products'),
          Expanded(child: Container(width: 0.0, height: 0.0)),
          BottomAppBarItem(
              onPressed: () {},
              buttonIcon: Icon(
                Icons.cloud_upload,
                color: Colors.white,
              ),
              text: 'Upload'),
        ],
      ),
    );
  }
}

class BottomAppBarItem extends StatelessWidget {
  final Function onPressed;
  final Icon buttonIcon;
  final String text;

  const BottomAppBarItem(
      {Key key,
      @required this.onPressed,
      @required this.buttonIcon,
      @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: SizedBox.fromSize(
          size: Size(56, 56),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              splashColor: Colors.white30,
              onTap: onPressed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonIcon,
                  Text(
                    text,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
