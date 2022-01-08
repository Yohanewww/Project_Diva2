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
      title: Row(
        children: <Widget>[
          // Image.asset("assets/images/furo.png"),
          Container(
            child: ClipOval(
              child: Image.network(
                "https://cdn.discordapp.com/emojis/771350520954617877.webp?size=96&quality=lossless",
                width: 35.0,
                height: 35.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15.0, right: 10.0),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0),
              width: 200.0,
              height: 30.0,
              child: Icon(Icons.search, color: Colors.white54),
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
            ),
          ),
          Container(
            width: 40,
            child: Image.asset(
              "assets/images/qrscan.png",
              width: 25.0,
              height: 25.0,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }
}
