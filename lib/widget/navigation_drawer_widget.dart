import 'package:flutter/material.dart';
import 'package:project_diva2/Home/home.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = 'Hako';
    final email = 'hakonojigen@abc.com';

    return Drawer(
      child: Container(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              name: name,
              email: email,
            ),
            const SizedBox(height: 48),
            buildMenuItem(
              text: '我的',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 5),
            buildMenuItem(
              text: '什么',
              icon: Icons.favorite_outline,
            ),
            const SizedBox(height: 5),
            buildMenuItem(
              text: '什么啦',
              icon: Icons.workspaces_outline,
            ),
            const SizedBox(height: 5),
            buildMenuItem(
              text: '什么啦a',
              icon: Icons.update,
            ),
            const SizedBox(height: 20),
            Divider(color: Colors.white70),
            const SizedBox(height: 20),
            const SizedBox(height: 5),
            buildMenuItem(
              text: '设定',
              icon: Icons.settings,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String name,
    required String email,
  }) =>
      InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  const SizedBox(height: 4),
                  Text(email,
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                ],
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Home(),
        ));
        break;
    }
  }
}
