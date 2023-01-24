import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_bookin_app/constants/dimen.dart';

import '../constants/colors.dart';

class rating_and_star_view_item extends StatelessWidget {

  final String listRating;
  final double listRatingAmount;
  const rating_and_star_view_item({
    Key? key,
    required this.listRating,
    required this.listRatingAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(listRating,
          style: const TextStyle(
            color: colorWhite,
            fontSize: fontSize12,
          ),
        ),
        const SizedBox(width: sizeBox5,),
        RatingBarIndicator(
          rating: listRatingAmount,
          itemCount: 5,
          itemSize: itemSize,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: ratingStarColor,
          ),
        ),
      ],
    );
  }
}