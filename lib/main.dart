import 'package:flutter/material.dart';
import 'package:project_diva2/nav.dart';
import 'package:project_diva2/pages/Home.dart';

// import 'package:project_diva2/pages/whatever.dart';
// import 'package:project_diva2/widget/navigation_drawer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigation',
      initialRoute: "/",
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      routes: {
        "new_page": (context) => NewRoute(),
        "/": (context) => Nav(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title: 'Flutter Demo Home Page'})
      : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
            TextButton(
              child: Text("open new route"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewRoute();
                }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new router"),
      ),
    );
  }
}
