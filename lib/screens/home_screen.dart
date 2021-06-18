import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ig_clone/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0.0,
        title: Image(
          image: AssetImage("images/logo.png"),
          width: 120.0,
        ),
        centerTitle: false,
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.facebookMessenger),
                color: appTextColor,
                iconSize: 20.0,
              ),
              Positioned(
                top: 2.0,
                left: 8.0,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appPink,
                  ),
                  child: Center(child: Text("3")),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
