import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:supportship/utilities/constants.dart';
import 'package:supportship/utilities/logo.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  child: Logo(
                    radius: 50.0,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      fontFamily: 'Sriracha',
                      fontSize: 40.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Please enter a username and bio to continue',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
                SizedBox(height: 60.0),
                MyTextField(
                  hintText: 'Username',
                  icon: kPersonIcon,
                ),
                SizedBox(height: 40.0),
                MyTextField(
                  hintText: 'Bio',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100.0),
                  child: Material(
                    color: Color(0xFF00AAC3),
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
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Sign up',
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
    );
  }
}
