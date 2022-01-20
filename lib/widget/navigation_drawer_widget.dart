import 'package:flutter/material.dart';
import 'package:project_diva2/Home/home.dart';
import '../widget/custom_icons.dart';


class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = 'Hakuya Furo';
    final id = "16329365236";
    final userid = 'ID:${(id)}';
  
    return Drawer(
      child: Container(
        
        child: ListView(
          
          children: <Widget>[
            // UserAccountsDrawerHeader(
            //     currentAccountPicture: new CircleAvatar(
            //           backgroundColor: Colors.amber,
            //           child: new Text("X")),
            //     accountName: Text(
            //       name,
            //       style: TextStyle(
            //         fontSize: 25, color: Colors.black)), 
            //     accountEmail: Text(
            //       userid,
            //       style: TextStyle(
            //         fontSize: 12, color: Colors.black)),
            //     ),
            buildHeader(
              name: name,
              userid: userid,
            ),
            const SizedBox(height: 35),
            buildMenuItem(
              text: '信息通道',
              icon: Icons.markunread_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 0),
            buildMenuItem(
              text: '我的賬號',
              icon: Icons.person_outline_rounded,
              onClicked: () => selectedItem(context, 0),

            ),
            const SizedBox(height: 0),
            buildMenuItem(
              text: '遊覽歷史',
              icon: Icons.update,
              onClicked: () => selectedItem(context, 0),

            ),
            const SizedBox(height: 30),
            Divider(color: Colors.grey),
            Align(
              child :Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child :Row(
                  children: [
                    TextButton(
                    onPressed: () { 
                          print("Bruh"); 
                      },
                    child: Icon(CustomIcons.facebook_square,size: 35,)
                    ),
                    TextButton(
                    onPressed: () { 
                          print("Bruh"); 
                      },
                    child: Icon(CustomIcons.twitter_square,size: 35)
                    ),
                    TextButton(
                    onPressed: () {   
                          print("Bruh"); 
                      },
                    child: Icon(CustomIcons.reddit_square,size: 35)
                    ),
                    TextButton(
                    onPressed: () { 
                          print("Bruh"); 
                      },
                    child: Icon(CustomIcons.discord,size: 35)
                      ),
                    ],
                  ),
                ),
              ),
            
            const SizedBox(height: 1),
            Divider(color: Colors.grey),
            
            TextButton(
                    onPressed: () { 
                          print("Bruh"); 
                      },
                    child: Icon(Icons.dark_mode_outlined)
                    ),
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
    required String userid,
  }) =>
      InkWell(
        child: Container(          
          decoration: BoxDecoration(            
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5),                                                    BlendMode.srcOver),
              image: NetworkImage('https://cdn.discordapp.com/attachments/888315437769699328/930858997840486410/849291.jpg'),
              fit: BoxFit.cover,             
            )
          ),
          padding: EdgeInsets.symmetric(vertical: 40,horizontal: 35),
          child: Container(
        
            color: Color(0xffffffff).withOpacity(0.5),
            child:Row(
              children: [
                CircleAvatar(backgroundColor: Colors.amber,
                    radius: 35,
                    backgroundImage: NetworkImage('https://cdn.discordapp.com/emojis/752563877178507404.webp?size=96&quality=lossless'),
                  ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                   
                    Text(name,
                        style: TextStyle(fontSize: 25, color: Colors.black)),
                    const SizedBox(height: 4),    
                    Text(userid,
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                )
              ],
            ),)
        ),
      );


  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.white;
    return ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal:  50),
      leading: Icon(icon, color: color),
      title: Align(
        alignment: Alignment(-1.4, 0),
        child :Text(text, style: TextStyle(color: color),
      )),
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
