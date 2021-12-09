import 'package:flutter/material.dart';

class Journey extends StatelessWidget {
  const Journey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Journey'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      );
}
