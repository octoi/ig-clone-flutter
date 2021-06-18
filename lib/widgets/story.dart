import 'package:flutter/material.dart';
import 'package:ig_clone/utils/constants.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: appPink,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2019/08/21/16/03/panda-4421395_960_720.jpg',
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          "_panda_",
          style: TextStyle(
            color: appTextColor,
          ),
        )
      ],
    );
  }
}
