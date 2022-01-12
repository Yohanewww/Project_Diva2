import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: false,
        // backgroundColor:,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Image.network(
                      'https://cdn.discordapp.com/attachments/888315437769699328/930858997840486410/849291.jpg'),
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text('消息通知'),
                        Text('游览历史'),
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
                    Column(
                      children: [
                        Text('Hakuya Furo'),
                        Text('Id:1234567890'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            color: Colors.white,
            height: 200,
            width: double.infinity,
            child: Column(
              children: [
                Text('Bug'),
                Text('问卷'),
                Text('客服'),
                Text('更新'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
