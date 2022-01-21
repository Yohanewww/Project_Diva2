import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Profile'),
      //   centerTitle: false,
      // ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: mediaQuery.size.width,
                    height: mediaQuery.size.width * (6 / 16),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Image.network(
                          'https://cdn.discordapp.com/attachments/888315437769699328/930858997840486410/849291.jpg'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                        ),
                        SizedBox(
                          height: 75,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaQuery.size.width * 25 / 100,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.mail),
                              SizedBox(width: 10),
                              Text('消息通知'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mediaQuery.size.width * 25 / 100,
                            vertical: 2,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.access_time),
                              SizedBox(width: 10),
                              Text('游览历史'),
                            ],
                          ),
                        ),
                        // SizedBox(height:15)
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.network(
                        'https://cdn.discordapp.com/emojis/752563877178507404.webp?size=96&quality=lossless'),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Column(    
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hakuya Furo000000'),
                          Text('Id:12345678'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Card(
            child: Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height:30),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.size.width * 25 / 100,
                      vertical: 2,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.bug_report_rounded),
                        SizedBox(width: 10),
                        Text('Bug'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.size.width * 25 / 100,
                      vertical: 2,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.list_alt_rounded),
                        SizedBox(width: 10),
                        Text('问卷'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.size.width * 25 / 100,
                      vertical: 2,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.headset_mic_rounded),
                        SizedBox(width: 10),
                        Text('客服'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.size.width * 25 / 100,
                      vertical: 2,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.system_update_alt_rounded),
                        SizedBox(width: 10),
                        Text('更新'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
