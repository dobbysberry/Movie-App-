import 'package:flutter/material.dart';
import 'package:movie_bookin_app/pages/movie_detail_page.dart';

import '../constants/colors.dart';
import '../constants/dimen.dart';
import '../view_item/rating_and_star_item_view.dart';
import 'easy_header_widget.dart';

class EasyListViewWidget extends StatelessWidget {
  final String listImg;
  final String listTitleText;
  final String listSeeMoreText;
  final String listItemText;
  final String listItemRating;
  final double listRatingAmount;
  const EasyListViewWidget({
    Key? key,
    required this.listImg,
    required this.listTitleText,
    required this.listSeeMoreText,
    required this.listItemText,
    required this.listItemRating,
    required this.listRatingAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: padding16,right: padding16),
          child: EasyHeaderWidget(listTitleText: listTitleText, listSeeMoreText: listSeeMoreText,),
        ),
        const SizedBox(
          height: sizeBox20,
        ),

        ///For Best popular Movie list View Part

        Container(
          height: height250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieDetailsPage()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: padding16),
                      child: Image.network(
                        listImg,
                        height: movieImgHeight,
                        //width: 150,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: padding16),
                      child: Wrap(
                        children: [
                          Container(
                            width: width150,
                            child: Text(
                              listItemText,
                              style: const TextStyle(
                                color: colorWhite,
                                fontSize: fontSize12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: padding16),
                      child: rating_and_star_view_item(
                          listRating: listItemRating,
                          listRatingAmount: listRatingAmount),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        // DefaultTabController(length: 5,
        //     child: Text("H"),
        // ),


      ],
    );
  }
}




