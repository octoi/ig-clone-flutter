import 'package:flutter/material.dart';
import 'package:ig_clone/utils/constants.dart';
import 'package:ig_clone/utils/data.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(getRandomImage()),
                      radius: 28.0,
                    ),
                    SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getRandomUserName(),
                          style: TextStyle(
                            color: appTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: [
                            Text(
                              "Hello there",
                              style: TextStyle(
                                color: appTextColor,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              " • 5h",
                              style: TextStyle(
                                color: appTextColor.withOpacity(0.5),
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 4.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt_outlined),
                      color: appTextColor.withOpacity(0.7),
                      iconSize: 25.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
