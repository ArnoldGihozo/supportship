import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final double radius;
  Logo({@required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage('images/logo3.jpeg'),
    );
  }
}