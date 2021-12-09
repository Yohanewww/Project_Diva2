import 'package:flutter/material.dart';

class Art extends StatelessWidget {
  const Art({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Art'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      );
}
