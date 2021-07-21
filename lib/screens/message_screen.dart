import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/utils/constants.dart';
import 'package:ig_clone/utils/data.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
          color: appTextColor,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              getRandomUserName(),
              style: TextStyle(
                color: appTextColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down),
              color: appTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
