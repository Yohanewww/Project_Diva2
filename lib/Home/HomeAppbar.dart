import 'dart:js';

import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  HomeAppBar({Key? key}) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      primary: false,
      title: Container(
        child: Row(
          children: <Widget>[
            // Image.asset("assets/images/furo.png"),
            ClipOval(
              child: Image.asset(
                "assets/images/furo.png",
                width: 35.0,
                height: 35.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0),
              width: 200.0,
              height: 30.0,
              child: Icon(Icons.search, color: Colors.white54),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.0),
            ),
            Image.asset(
              "assets/images/qrscan.png",
              width: 20.0,
              height: 20.0,
              color: Colors.black45,
            )
          ],
        ),
      ),
    );
  }
}
