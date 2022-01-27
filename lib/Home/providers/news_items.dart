import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/news_detail_screen.dart';
import 'news.dart';
import 'single_news.dart';

class NewsItems extends StatelessWidget {
  const NewsItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final single_news = Provider.of<SingleNewsItem>(context, listen: false);
    String _views = single_news.views.toString();
    String _likes = single_news.likes.toString();
    String _description = single_news.description;
    List<String> _tags = single_news.tags;
    //  tag 还没设置

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                NewsDetailScreen.routeName,
                arguments: single_news.id,
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black54, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 1),
                      blurRadius: 1.0,
                    ),
                  ]),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0)),
                        child: new Image.network(
                          single_news.thumbnailImageUrl,
                          width: 420,
                          height: 320,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 5,
                          left: 3.0,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.remove_red_eye_outlined,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              Text(
                                _views,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0),
                              ),
                              Icon(
                                Icons.thumb_up_off_alt_outlined,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              Text(
                                _likes,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50.0,
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   videoContents[index],
                        //   style: TextStyle(
                        //       fontSize: 14.0,
                        //       fontWeight: FontWeight.normal),
                        // ),
                        Container(
                          //                                    color: Colors.yellow,
                          child: Text(
                            _description,
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
         
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
    );

}}