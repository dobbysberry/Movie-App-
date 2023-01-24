import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimen.dart';
import 'easy_header_widget.dart';
import 'easy_showcase_actor_creator_widget.dart';

class ActorAndCreatorView extends StatelessWidget {

  final String headerListTitleText;
  final String headerSeeMoreText;
  final String listImg;
  final String personName;
  final int noOfVotes;
  final IconData heartIcon;
  const ActorAndCreatorView({
    Key? key,
    required this.headerListTitleText,
    required this.headerSeeMoreText,
    required this.listImg,
    required this.personName,
    required this.noOfVotes,
    required this.heartIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: actor_CreatorHeight,
      color: kPrimaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: padding16,right: padding16,top: padding16),
            child: EasyHeaderWidget(listTitleText: headerListTitleText, listSeeMoreText: headerSeeMoreText),
          ),
          SizedBox(
            height: sizeBox10,
          ),
          SizedBox(
            height: showTimeHeight,
            child: EasyShowCaseActorCreatorListWidget(listImage: listImg, personName: personName, noOfVotes: noOfVotes, heartIcon: Icons.favorite,),
          ),
        ],
      ),
    );
  }
}