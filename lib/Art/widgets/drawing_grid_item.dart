import 'package:flutter/material.dart';

class DrawingGridItem extends StatelessWidget {
  final String imageUrl;

  DrawingGridItem(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(imageUrl),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 5,
            ),
            height: 70,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.transparent,
                  Colors.black87,
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      "Title",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Likes",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Author",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Price",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
