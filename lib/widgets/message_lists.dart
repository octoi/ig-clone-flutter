import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
