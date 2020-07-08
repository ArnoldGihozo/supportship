import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:supportship/screens/signUpScreen.dart';
import 'package:supportship/utilities/authentication.dart';

import 'package:supportship/utilities/constants.dart';
import 'package:supportship/utilities/logo.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: 60,
    );

    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  } // initState
//
//  @override
//  void dispose() {
//    // TODO: implement dispose
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 90.0, 0, 0),
                  child: Center(
                    child: Logo(radius: controller.value),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                //margin: EdgeInsets.only(left: 1.0),
                child: Center(
                  child: Text(
                    'SUPPORTSHIP',
                    style: TextStyle(
                      fontFamily: 'MuseoModerno',
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ),
              Text(
                'Connect To Support',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
              ),
              Divider(
                color: Colors.black26,
                height: 10.0,
              ),
              SizedBox(
                height: 200.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: SignInButton(
                  Buttons.Google,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  text: "Sign in with Google",
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () async {
                    bool result = await authService.googleSignIn();
                    if (!result) {
                      print("auth failed");
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
