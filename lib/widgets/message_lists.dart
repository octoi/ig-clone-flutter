import 'package:flutter/material.dart';
import 'package:ig_clone/utils/constants.dart';
import 'package:ig_clone/utils/data.dart';

class MessageList extends StatelessWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              contentPadding: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 10.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.grey.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.search),
            ),
          ),
          Container(
            child: Row(
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
                    Text(
                      "Hello there",
                      style: TextStyle(
                        color: appTextColor,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
