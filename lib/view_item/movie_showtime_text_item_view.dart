import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimen.dart';
import '../constants/strings.dart';

class movie_showtime_text_item_view extends StatelessWidget {
  const movie_showtime_text_item_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(showTimeText1,
          style: TextStyle(
            color: colorWhite,
            fontSize: fontSize26,
          ),
        ),
        Text(showTimeText2,
          style: TextStyle(
            color: colorWhite,
            fontSize: fontSize25,
          ),
        ),
        Spacer(),
        Text(showTimeText3,
          style: TextStyle(
            color: kPlayButtonColor,
            fontSize: fontSize16,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}