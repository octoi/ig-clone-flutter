import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/utils/constants.dart';
import 'package:ig_clone/utils/data.dart';

class Post extends StatelessWidget {
  bool isPostLiked = getRandomBool();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        foregroundImage: NetworkImage(getRandomImage())),
                    SizedBox(width: 15.0),
                    Text(
                      getRandomUserName(),
                      style: TextStyle(
                        color: appTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Opacity(
                  opacity: 0.8,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                    color: appTextColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Image.network(
            getRandomImage(),
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      isPostLiked
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart,
                    ),
                    color: isPostLiked ? appPink : null,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.chat_bubble),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.paperplane),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.bookmark),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(getRandomImage()),
                  radius: 10.0,
                ),
                SizedBox(width: 8),
                Text("Liked by"),
                SizedBox(width: 2),
                Text(
                  getRandomUserName(),
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 2),
                Text("and"),
                SizedBox(width: 2),
                Text(
                  "others",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
