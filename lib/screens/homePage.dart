import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supportship/utilities/hamburger_menu.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HamburgerMenu(),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Color(0xFF00AAC3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Center( 
        child: Text('This is your HomePage page'),
      ),
      
    
  

      
    );
  }
}