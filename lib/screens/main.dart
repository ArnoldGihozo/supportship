import 'package:flutter/material.dart';
import 'package:supportship/screens/chat_screen.dart';
import 'package:supportship/screens/comments_screen.dart';
import 'package:supportship/screens/message_screen.dart';
import 'package:supportship/screens/facultyScreen.dart';
import 'package:supportship/screens/journal_post_screen.dart';
import 'package:supportship/screens/make_post_screen.dart';
import 'my_profile.dart';
import 'package:supportship/screens/loginScreen.dart';
import 'package:supportship/screens/signUpScreen.dart';
import 'package:supportship/screens/homeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      //theme: ,--> add the overall theme here after we have agreed upon one
      initialRoute: '/LogIn',
      routes: {
        '/LogIn': (context) => LogInScreen(),
        '/SignUp': (context) => SignUpScreen(),
        '/Home': (context) => HomeScreen(),
        '/Profile': (context) => MyProfile(),
        '/Message': (context) => MessageScreen(),
        '/Chat': (context) => ChatScreen(),
        '/Faculty': (context) => FacultyScreen(),
        '/JournalPost': (context) => JournalPostScreen(),
        '/RegularPost': (context) => MakePostScreen(),
        '/Comment': (context) => CommentsScreen(),
      }, //routes
    ),
  ); // runApp
} // main
