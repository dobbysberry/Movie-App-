
import 'package:flutter/material.dart';
import 'package:movie_bookin_app/constants/colors.dart';
import 'package:movie_bookin_app/constants/dimen.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/strings.dart';


class ShowCaseItemView extends StatelessWidget {

  //final Function onTap;
  const ShowCaseItemView({
    Key? key,
    //required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: padding10,left: padding16),
            child: Stack(
              children: [
                Image.network(
                  'https://flow24.net/wp-content/uploads/2021/11/Treasure-Readies-For-A-Ghost-Hunt-In-The-Mysterious-Class.jpg',
                  //width: 200,
                  fit: BoxFit.contain,
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        dramaName,
                        style: TextStyle(
                          color: colorWhite,
                          fontSize: showCaseFontSize,
                        ),
                      ),
                      Text(
                        castName,
                        style: TextStyle(
                          color: colorWhite70,
                          fontSize: showCaseOtherFontSize,
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  left: playIconLeftRight,
                  right: playIconLeftRight,
                  top: playIconTop,
                  child: Icon(Icons.play_circle,
                    color: kPlayButtonColor,
                    size: playIconSize,),
                ),
              ],
            ),

        );
      },
    );
  }
}