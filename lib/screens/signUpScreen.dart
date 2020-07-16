import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:supportship/utilities/constants.dart';
//import 'package:supportship/utilities/logo.dart';
import 'package:supportship/utilities/myTextField.dart';

import 'homeScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF76A63),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'PROFILE',
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 4.0),
                  ),
                  SizedBox(height: 20.0),
//                  Container(
//                    width: 150.0,
//                    height: 150.0,
//                    decoration: BoxDecoration(
//                        shape: BoxShape.circle,
//                        color: Colors.white,
//                        boxShadow: [
//                          BoxShadow(
//                            color: Color(0x00000029),
//                            blurRadius: 10,
//                            spreadRadius: 7,
//                          )
//                        ]),
//                    child: IconButton(
//                      onPressed: () {},
//                      icon: Icon(Icons.add),
//                      iconSize: 100.0,
//                      color: Color(0x6BFFD243),
//                    ),
//                  ),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    elevation: 4.0,
                    color: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      iconSize: 100.0,
                      color: Color(0x6BFFD243),
                    ),

//                    child: CircleAvatar(
//                      radius: 70.0,
//                    ),
                  ),
//
                  SizedBox(height: 20.0),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 4.0,
                    child: MyTextField(
                      hintText: 'Username',
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 4.0,
                    child: MyTextField(
                      hintText: 'Bio',
                      maxLines: 9,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 35.0),
                    child: Material(
                      color: Color(0xFFFFD243),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      elevation: 3.0,
                      child: MaterialButton(
                        onPressed: () {
                          //Adding Funciton to move to home page

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          ); // push
                        },
                        minWidth: 130.0,
                        height: 42.0,
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
