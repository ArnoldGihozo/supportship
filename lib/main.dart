import 'package:flutter/material.dart';
import 'package:supportship/my_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfile(),
    );
  }
  // This widget is the root of your application.

}
