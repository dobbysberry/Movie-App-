import 'package:flutter/material.dart';

class AboutFilmTwoTextView extends StatelessWidget {

  final String frontText;
  final String endText;
  const AboutFilmTwoTextView({
    Key? key,
    required this.frontText,
    required this.endText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children:  [
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: Text(frontText,
            style: const TextStyle(
              color: Colors.white38,
              fontSize: 13,
            ),
          ),
        ),
        //const SizedBox(width: 50,),
        //const Spacer(),

        Expanded(
          child: Text(endText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}