import 'package:flutter/material.dart';
import 'package:ig_clone/utils/constants.dart';

class Story extends StatelessWidget {
  final bool isMine;

  const Story({
    Key? key,
    this.isMine = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: isMine ? null : appPink,
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2019/08/21/16/03/panda-4421395_960_720.jpg',
                ),
              ),
              isMine
                  ? Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: EdgeInsets.all(0.5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white30,
                        ),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          backgroundColor: appPink,
                          radius: 12.0,
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          isMine ? 'Your Story' : "_panda_",
          style: TextStyle(
            color: appTextColor,
          ),
        )
      ],
    );
  }
}
