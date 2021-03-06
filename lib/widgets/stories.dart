import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ig_clone/widgets/story.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          SizedBox(width: 5.0),
          Story(isMine: true),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
        ],
      ),
    );
  }
}
