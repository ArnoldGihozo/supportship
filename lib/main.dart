import 'package:flutter/material.dart';
import 'signUpScreen.dart';
import 'loginScreen.dart';

void main() {
  runApp(
    MaterialApp(

      initialRoute: '/LogIn',
      routes: {
        '/LogIn': (context) => LogInScreen(),
        '/SignUp':(context) => SignUpScreen(),
        // '/Home': (context) => HomeScreen(),
      },//routes
    ),
  ); // runApp
}// main

