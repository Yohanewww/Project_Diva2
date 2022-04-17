import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtistScreen extends StatelessWidget {
  const ArtistScreen({Key? key}) : super(key: key);
  static const routeName = '/artist-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artist Store'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.amber),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25, horizontal: 55),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.blueAccent),
                )
              ],
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
