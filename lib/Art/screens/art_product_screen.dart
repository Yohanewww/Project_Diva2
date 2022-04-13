import 'package:flutter/material.dart';

import './artist_screen.dart';

class ArtProductScreen extends StatelessWidget {
  const ArtProductScreen({Key? key}) : super(key: key);
  static const routeName = '/art-product-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Art Products'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  'https://media.discordapp.net/attachments/888315437769699328/957604071664123984/E0Faya1VEAQEej8.jpg'),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 10,
                ),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.amber),
                child: Column(
                  children: [
                    Text('Title'),
                    Text('Price'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Text('Author Name'),
                    SizedBox(width: 10),
                    Image.network(
                      'https://cdn.discordapp.com/attachments/888315437769699328/963760431393026068/4444.jpg',
                      height: 50,
                    ),
                    Expanded(child: Container()),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(ArtistScreen.routeName);
                      },
                      child: Text('Follow'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.cyanAccent),
                child: Text('Sizes'),
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.orangeAccent),
                child: Column(
                  children: [
                    Text('Description'),
                    Expanded(child: Container()),
                    Text('v More v'),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.lightGreenAccent),
                child: Text('Reviews&Comments'),
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Text('Related Products'),
              ),
            ],
          ),
        ));
  }
}
