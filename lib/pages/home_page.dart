import 'package:flutter/material.dart';
import 'package:movie_bookin_app/constants/const.dart';
import 'package:movie_bookin_app/constants/dimen.dart';
import 'package:movie_bookin_app/constants/strings.dart';

import '../constants/colors.dart';
import '../view_item/movie_showtime_item_view.dart';
import '../view_item/header_item_view.dart';
import '../view_item/showcase_item_view.dart';
import '../widgets/EasyListViewWidget.dart';
import '../widgets/actor_and_creator_easy_widget.dart';
import '../widgets/easy_header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(title),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: padding10),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///for pageView Heading part
            Container(
              height: height200,
              child: const HeaderItemView(),
            ),
            const SizedBox(
              height: sizeBox40,
            ),

            /// For Best Popular Movie List Title
            const EasyListViewWidget(
              listImg:
                  'https://image.kpopmap.com/2021/11/the-Mysterious-Class-yg-ent-kim-doyoung-cast-image.jpg',
              listTitleText: movieListViewTitleText,
              listItemText: movieListViewText,
              listItemRating: "7.7",
              listRatingAmount: 4.5,
              listSeeMoreText: 'SEE MORE',
            ),

            ///For ShowTime Card
            const movie_showtime_item_view(),

            const SizedBox(
              height: sizeBox20,
            ),

            ///For TabBar Part

            DefaultTabController(
                length: tabsName.length,
                child: TabBarView(),
            ),

            SizedBox(height: sizeBox20,),

            ///For ShowCase Part
            Column(
              mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: padding16,right: padding16),

                  ///For ShowCase Header
                  child: EasyHeaderWidget(listTitleText: showCaseText, listSeeMoreText: showCaseSeeMoreText,),
                ),
                SizedBox(
                  height: sizeBox10,
                ),

                ///For SHOWCASE List Part
                SizedBox(
                  height: height200,
                  //width: 300,
                  child: ShowCaseItemView(),
                ),

              ],
            ),
            const SizedBox(
              height: sizeBox20,
            ),

            ///For Actor List Part
            ActorAndCreatorView(headerListTitleText: actorHeaderList1, headerSeeMoreText: actorHeaderSeeMoreList1, listImg: 'https://i.pinimg.com/originals/00/2e/da/002eda6cfa20650051a9e6f917a84567.jpg', personName: favName, noOfVotes: 20, heartIcon: Icons.favorite,),
            const SizedBox(
              height: sizeBox20,
            )

          ],
        ),
      ),
    );
  }
}

class TabBarView extends StatefulWidget {
  const TabBarView({
    Key? key,
  }) : super(key: key);

  @override
  State<TabBarView> createState() => _TabBarViewState();
}

class _TabBarViewState extends State<TabBarView> {


  List<Widget> ListView = [
    EasyListViewWidget(listImg: 'https://i.mydramalist.com/v4OjD_3m.jpg', listTitleText: '', listSeeMoreText: '', listItemText: randomSceneName, listItemRating: '4.8', listRatingAmount: 3),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          onTap: (index){
            setState(() {
              ListView= EasyListViewWidget(listImg: 'https://i.mydramalist.com/v4OjD_3m.jpg', listTitleText: '', listSeeMoreText: '', listItemText: randomSceneName, listItemRating: '4.8', listRatingAmount: 3) as List<Widget>;
            });

          },
          labelColor: Colors.white,
          indicatorColor: kPlayButtonColor,
          unselectedLabelColor: colorWhite54,
          isScrollable: true,
          tabs: tabsName.map((name) => Tab(
            text: name,
          )).toList(),
        ),

        //TabBarView(children: ListView,),
      ],
    );
  }
}








