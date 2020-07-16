import 'package:flutter/material.dart';
class Logo extends StatelessWidget {
  final Color colour;
  final double radius;
  Logo({@required this.radius,@required this.colour});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: colour,
      backgroundImage: AssetImage('images/logo3.png'),
    );
  }
}