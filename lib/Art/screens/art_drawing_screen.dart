import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/drawing_grid_item.dart';

class ArtDrawing extends StatefulWidget {
  ArtDrawing({Key? key}) : super(key: key);

  @override
  _ArtDrawingState createState() => _ArtDrawingState();
}

class _ArtDrawingState extends State<ArtDrawing> {
  final List dummyImageList = [
    "https://cdn.discordapp.com/attachments/888315437769699328/957604071244726272/276128710_348998350571397_4790983634473326833_n.jpg",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604071475400704/276056323_2086806141489450_3173406138727740064_n.jpg",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604071664123984/E0Faya1VEAQEej8.jpg",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604071869653073/ddsadl7-adbe7dab-a194-4e7c-9f30-2234a07dae1c.jpg",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604072108752947/274035612_4930040887072659_92515293170683800_n.jpg",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604072322646067/257444016_4200280220076795_3225119500223436899_n.jpg",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604072565899284/261676223_5259013830781677_4134081543391715767_n.jpg",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604072779817000/254616891_366870078566149_7893042624021925470_n.png",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604073002131496/FC4JYquVEAAVDMn.jpg",
    "https://cdn.discordapp.com/attachments/888315437769699328/957604073237004358/saekano.jpg",
  ];

  // with SingleTickerProviderStateMixin {
  // Widget sasas(BuildContext context, int index) {
  //   var images = [
  //     'https://i0.hdslb.com/bfs/archive/2bcdd16080a1b741fb18ea9e2b2edb942f236389.jpg',
  //     "https://i0.hdslb.com/bfs/archive/5dea26a8ef8d5410b3e2e9861638bf46eeb70569.jpg",
  //     "https://i0.hdslb.com/bfs/archive/4cf45546da8f6a04321019c7ae83bcc3d1a8259e.jpg",
  //     "https://i0.hdslb.com/bfs/archive/a4758eac761305040574be94e4909d4b6414e612.jpg",
  //     "https://i0.hdslb.com/bfs/archive/1d5cd0e2ac820f68db273f5d53168a429fa83182.jpg",
  //   ];

  //   return (Container(
  //     child: ClipRRect(
  //       child: Image.network(
  //         images[index],
  //         height: 150.0,
  //         scale: 0.1,
  //         fit: BoxFit.cover,
  //       ),
  //     ),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      panelBuilder: (ScrollController sc) => _scrollingList(sc),
      minHeight: 500,
      maxHeight: 1200,
      body: Container(
        // height: 150.0,
        padding: EdgeInsets.symmetric(vertical: 5.0),
        alignment: Alignment.topCenter,
        child: Text(
          "Ranking",
        ),
      ),
    );

    // return ListView.builder(
    //   scrollDirection: Axis.vertical,
    //   itemCount: 2,
    //   itemBuilder: (context, i) {
    //     return i == 0
    //         ? Column(
    //             children: <Widget>[
    //               Container(
    //                 height: 150.0,
    //                 padding: EdgeInsets.symmetric(vertical: 5.0),
    //                 alignment: Alignment(0, 0),
    //                 child: Text(
    //                   "Ranking",
    //                 ),
    //               ),
    //             ],
    //           )
    //         : Container(
    //             width: double.infinity,
    //             height: 550,
    //             child: MasonryGridView.count(
    //               crossAxisCount: 2,
    //               mainAxisSpacing: 0,
    //               crossAxisSpacing: 0,
    //               itemBuilder: (context, index) {
    //                 return DrawingGridItem(dummyImageList[index]);
    //               },
    //             ),
    //           );
    //   },
    // );
  }

  Widget _scrollingList(ScrollController sc) {
    return Container(
      child: MasonryGridView.count(
        controller: sc,
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        itemBuilder: (context, index) {
          return DrawingGridItem(dummyImageList[index]);
        },
      ),
    );
  }
}

// Widget _scrollingList(ScrollController sc) {
//   return Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(24.0),
//         topRight: Radius.circular(24.0),
//       ),
//     ),
//     child: ListView.builder(
//       controller: sc,
//       itemCount: 50,
//       itemBuilder: (BuildContext context, int i) {
//         return Container(
//           padding: const EdgeInsets.all(12.0),
//           child: Text("$i"),
//         );
//       },
//     ),
//   );
// }
