import 'package:flutter/material.dart';
import 'package:ig_clone/screens/home_screen.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
