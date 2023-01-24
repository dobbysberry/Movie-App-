import 'package:flutter/material.dart';

class IconAndTextView extends StatelessWidget {
  const IconAndTextView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            // onTap: (){
            //   Navigator.of(context).push();
            // },
            child: TextButton.icon(onPressed: (){},
              icon: const Icon(Icons.play_circle,
                color: Color.fromRGBO(106, 86, 31, 0.6),),
              label: const Text(
                "PLAY TRAILER ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(233, 189, 68, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          TextButton.icon(onPressed: (){},
            icon: const Icon(Icons.star,
              color: Color.fromRGBO(233, 189, 68, 1),),
            label: const Text(
              "RATE MOVIE  ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(30, 31, 48, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              side: const BorderSide(
                  color: Colors.white70,
                  width: 2
              ),
            ),
          ),
        ],
      ),
    );
  }
}