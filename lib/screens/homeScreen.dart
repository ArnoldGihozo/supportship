import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supportship/utilities/hamburger_menu.dart';
import 'package:supportship/utilities/myBottomNavigationBar.dart';
import 'package:supportship/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HamburgerMenu(),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: kYellow,
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.vertical(
//            bottom: Radius.circular(30),
//          ),
//        ),
      ),
      body: Center(
        child: Text('This is your Home Screen page'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),


    );
  }
}
