import 'package:flutter/material.dart';

class EasyShowCaseActorCreatorListWidget extends StatelessWidget {

  final String listImage;
  final String personName;
  final int noOfVotes;
  final IconData heartIcon;
  const EasyShowCaseActorCreatorListWidget({
    Key? key,
    required this.listImage,
    required this.personName,
    required this.noOfVotes,
    required this.heartIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return
          Container(
          width: 200,
          height: 300,
          padding: EdgeInsets.only(right: 10,left: 16),
          child: Stack(
            children: [
              Image.network(
                listImage,
                height: 300,
                fit: BoxFit.cover,
              ),

              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      personName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.thumb_up,color: Colors.amber,size: 18,),
                        const SizedBox(width: 10,),
                        Text(
                          "YOU LIKED $noOfVotes VOTES",
                          style: const TextStyle(
                            color: Colors.black38,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                  child: Icon(
                  heartIcon,
                  size: 18,color: Colors.white,)),
            ],
          ),
        );
      },
    );
  }
}