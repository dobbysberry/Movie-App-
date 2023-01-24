import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_bookin_app/widgets/EasyListViewWidget.dart';
import 'package:movie_bookin_app/widgets/actor_and_creator_easy_widget.dart';

import '../constants/colors.dart';
import '../constants/dimen.dart';
import '../constants/strings.dart';
import '../view_item/chip_item_view.dart';
import '../view_item/icon_and_text_item_view.dart';
import '../view_item/sliver_appbar_title_and_rating_item_view.dart';
import '../widgets/about_film_list_widget.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
            centerTitle: false,
            expandedHeight: sliverHeight,
            floating: true,
            pinned: true,
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
                onTap:(){
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back)),
            actions: const [
              Icon(Icons.search),
            ],
            flexibleSpace: Stack(
              children: [
                FlexibleSpaceBar(
                  background: Image.network(
                    "https://i1.sndcdn.com/artworks-7tagzLS8fcRIryyj-hbx1mg-t500x500.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                const SliverAppBarTitleAndRating(),
              ],
            ),
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ///For Genres Part
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(padding12),
                    child: ChipView(),
                  ),

                  ///For Story Line
                  Padding(
                    padding: EdgeInsets.all(padding14),
                    child: toryLinesView(),
                  ),

                  ///For Category Button
                  Padding(
                    padding: EdgeInsets.all(padding10),
                    child: IconAndTextView(),
                  ),

                  ///For Actors Part

                  ActorAndCreatorView(headerListTitleText: actorHeaderList2, headerSeeMoreText: '', listImg: 'https://i1.sndcdn.com/artworks-yElRFaTJVKOzhxA1-QsdhxQ-t500x500.jpg', personName: castName, noOfVotes: 15, heartIcon: Icons.favorite),

                  ///For About Film Part

                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(padding10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: AboutFilmView(),
                      ),
                    ),
                  ),

                ],
              ),

              ///For Creator Part
              const ActorAndCreatorView(headerListTitleText: creatorHeaderList, headerSeeMoreText: creatorHeaderSeeMoreList, listImg: 'https://35express.org/wp-content/uploads/2022/11/su-nghiep-dinh-cao-cua-ong-trum-kpop-yang-hyun-suk-1-35express.jpg', personName: ceoName, noOfVotes: 50, heartIcon: Icons.favorite),
              const SizedBox(height: sizeBox20,),

              ///For Related Movie Part
              const EasyListViewWidget(listImg: 'https://i.mydramalist.com/rl6Vp_4f.jpg', listTitleText: relatedMovie, listSeeMoreText: '', listItemText: relatedMovieName, listItemRating: '7.7', listRatingAmount: 5)

            ],
          ),
        ),
      ),
    );
  }
}

class AboutFilmView extends StatelessWidget {
  const AboutFilmView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('ABOUT FILM',
          style: TextStyle(
            color: Colors.white38,
            fontSize: fontSize14,
          ),
        ),
        SizedBox(height: sizeBox20,),
        AboutFilmTwoTextView(frontText: 'Original Title', endText: 'The Mysterious Class:Web Drama',),
        SizedBox(height: sizeBox20,),
        AboutFilmTwoTextView(frontText: 'Genres', endText: 'Supernatural thriller, Mystery, Supernatural',),
        SizedBox(height: sizeBox20,),
        AboutFilmTwoTextView(frontText: 'Production ', endText: 'YG ENTERTAINMENT',),
        SizedBox(height: sizeBox20,),
        AboutFilmTwoTextView(frontText: 'Original release ', endText: '12 November –31 December 2021',),
        SizedBox(height: sizeBox20,),
        AboutFilmTwoTextView(frontText: 'Starring', endText: 'Haruto Watanabe, Kim Do-young, Choi Hyun-suk,Bang Ye-dam, Asahi Hamada, So Jung-hwan, Yoon Jae-hyuk, Yoshinori Kanemoto, Park Jeong-woo, Kim Jun-kyu, Park Ji-hoon, Mashiho Takata',),
      ],
    );
  }
}

class toryLinesView extends StatelessWidget {
  const toryLinesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Storylines',
          style: TextStyle(
            color: Colors.white38,
            fontSize: fontSize14,
          ),
        ),
        SizedBox(height: sizeBox8,),
        Text("In Boseok Boys High School, the students of Grade 12 – Class 4 are trying to come into terms with the possibility of a ghost lurking in their homeroom after discovering that their class of 21 students was supposed to have only 20. A series of spooky events drove the students to suspect each other while trying to solve the mystery of their class' resident ghost, who might simply be posing as one of their classmates.",
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize16,
          ),
        ),
      ],
    );
  }
}








