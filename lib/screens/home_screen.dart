import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ig_clone/utils/constants.dart';
import 'package:ig_clone/widgets/posts.dart';
import 'package:ig_clone/widgets/stories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              color: appTextColor,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: appTextColor,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.movie_outlined),
              color: appTextColor,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined),
              color: appTextColor,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.userCircle),
              color: appTextColor,
              iconSize: 25.0,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Stories(),
            Posts(),
          ],
        ),
      ),
    );
  }
}
