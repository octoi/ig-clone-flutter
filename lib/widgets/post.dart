import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/utils/constants.dart';
import 'package:ig_clone/utils/data.dart';

class Post extends StatelessWidget {
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
          )
        ],
      ),
    );
  }
}
