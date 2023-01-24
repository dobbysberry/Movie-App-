import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/dimen.dart';

class EasyHeaderWidget extends StatelessWidget {

  final String listTitleText;
  final String listSeeMoreText;
  const EasyHeaderWidget({
    Key? key,
    required this.listTitleText,
    required this.listSeeMoreText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          listTitleText,
          style: TextStyle(
            color: listHeaderColor,
            fontSize: fontSize12,
          ),
        ),
        Spacer(),
        Text(
          listSeeMoreText,
          style: const TextStyle(
            color: listHeaderColor,
            fontSize: fontSize12,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}