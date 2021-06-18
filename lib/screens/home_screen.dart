import 'package:flutter/material.dart';

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
      ),
    );
  }
}
