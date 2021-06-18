import 'package:flutter/material.dart';
import 'package:ig_clone/widgets/post.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        children: [
          Post(),
        ],
      ),
    );
  }
}
