import 'package:flutter/material.dart';



import 'package:supportship/screens/loginScreen.dart';
import 'package:supportship/screens/signUpScreen.dart';
import 'package:supportship/screens/homeScreen.dart';


void main() {
  runApp(
    MaterialApp(

      initialRoute: '/LogIn',
      routes: {
        '/LogIn': (context) => LogInScreen(),
        '/SignUp':(context) => SignUpScreen(),
        '/Home': (context) => HomeScreen(),
      },//routes
    ),
  ); // runApp
}// main

