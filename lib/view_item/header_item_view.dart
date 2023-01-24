import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimen.dart';
import '../constants/strings.dart';

class HeaderItemView extends StatelessWidget {
  const HeaderItemView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      PageView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Image.network(
                  'https://www.allkpop.com/upload/2020/01/content/092214/1578626083-2.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: padding15,right: padding15),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      pageViewStackText,
                      style: TextStyle(
                        color: colorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: showCaseFontSize,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Icon(Icons.play_circle,
                  color: kPlayButtonColor,
                  size: headerPlayIconSize,),
                ),
              ],
            );
          },

        ),
    );
  }
}