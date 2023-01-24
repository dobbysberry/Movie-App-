import 'package:flutter/material.dart';
import 'package:movie_bookin_app/constants/colors.dart';
import 'package:movie_bookin_app/constants/dimen.dart';

import '../constants/strings.dart';

class ChipView extends StatelessWidget {
  const ChipView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.schedule),
          label: const Text(
            dramaPeriodTime,
            style: TextStyle(color: colorWhite70, fontSize: fontSize12),
          ),
        ),
        const Chip(label: Text(chip1,
          style: TextStyle(
            fontSize: fontSize12,
            color: colorWhite,
          ),
        ),
          backgroundColor: chipColor,
        ),
        const SizedBox(width: sizeBox5,),
        const Chip(label: Text(chip2,
          style: TextStyle(
            fontSize: fontSize12,
            color: colorWhite,
          ),
        ),
          backgroundColor: chipColor,
        ),
        const SizedBox(width: sizeBox5,),
        const Chip(label: Text(chip3,
          style: TextStyle(
            fontSize: fontSize12,
            color: colorWhite,
          ),
        ),
            backgroundColor: chipColor,
        ),
        const Padding(
          padding: EdgeInsets.only(left: padding6),
          child: Icon(Icons.favorite,color: colorWhite,),
        ),
      ],
    );
  }
}