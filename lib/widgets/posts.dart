import 'package:flutter/material.dart';
import 'package:ig_clone/widgets/post.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
    );
  }
}
