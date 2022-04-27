import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  AppBarWidget();

  @override
  Widget build(BuildContext context) {
    return getAppBarWidget();
  }

  Widget getAppBarWidget() {
    return AppBar(
        toolbarHeight: 50,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'COVID-19UA',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Icon(Icons.send),
              margin: EdgeInsets.only(right: 10),
            ),
          ),
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
