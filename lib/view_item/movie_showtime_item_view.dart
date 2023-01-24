
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimen.dart';
import 'movie_showtime_text_item_view.dart';

class movie_showtime_item_view extends StatelessWidget {
  const movie_showtime_item_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: padding16,right: padding16),
        child: SizedBox(
          width: double.infinity,
          height: showTimeHeight,
          child: Card(
            color: colorBlack,
            child: Row(
              mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(padding22),
                      child: movie_showtime_text_item_view(),
                    ),
                    Spacer(),
                    Center(
                      child: Icon(
                        Icons.location_on,
                        size: locationIcon,
                        color: colorWhite,
                      ),
                    ),
                  ],
            ),
          ),
        ),
      )
    ;
  }
}