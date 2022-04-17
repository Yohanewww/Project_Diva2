import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/drawing_grid_item.dart';
import 'art_product_screen.dart';

class ArtCommission extends StatefulWidget {
  ArtCommission({Key? key}) : super(key: key);

  @override
  _ArtCommissionState createState() => _ArtCommissionState();
}

class _ArtCommissionState extends State<ArtCommission>
    with SingleTickerProviderStateMixin {
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
  }

  Widget _scrollingList(ScrollController sc) {
    return Container(
      child: MasonryGridView.count(
        controller: sc,
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(ArtProductScreen.routeName),
              child: DrawingGridItem(dummyImageList[index]));
        },
      ),
    );
  }
}
