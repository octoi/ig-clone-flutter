import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/utils/constants.dart';
import 'package:ig_clone/utils/data.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(foregroundImage: NetworkImage(getRandomImage())),
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
          )
        ],
      ),
    );
  }
}
