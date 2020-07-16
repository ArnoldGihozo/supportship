import 'package:flutter/material.dart';
import 'package:supportship/Components/faculty_post..dart';
import 'package:supportship/Data/data_definitions.dart';
import 'package:supportship/utilities/hamburger_menu.dart';
import 'package:supportship/utilities/constants.dart';
import 'package:supportship/Components/circle_image.dart';
import 'package:supportship/utilities/myBottomNavigationBar.dart';

class FacultyScreen extends StatefulWidget {
  @override
  _FacultyScreenState createState() => _FacultyScreenState();
}

class _FacultyScreenState extends State<FacultyScreen> {
  final circleImageData = CircleImageData(size: 160.0, image: "https://picsum.photos/200");
  Color colour = kPink;
  String buttonText = "Subscribe";

  void afterButtonPress(){

    if(colour == kPink){
      colour = kActiveColor;
      buttonText = "Subscribed";
    }// if
    else{
      colour = kPink;
      buttonText = "Subscribe";
    }// else
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HamburgerMenu(),
      appBar: AppBar(
        title: Text("Faculty of Science"),
        backgroundColor: kYellow,
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.vertical(
//            bottom: Radius.circular(30),
//          ),
//        )
      ),

      body: SafeArea(
        child: CustomScrollView(
          slivers: [
          SliverAppBar(
          backgroundColor: Colors.white,
          expandedHeight: 250,
          flexibleSpace: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              CircleImage(circleImageData: circleImageData),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0),
                child: FlatButton(
                  child: Text("$buttonText"),
                  color: colour,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: kPink),),
                    onPressed: () {
                      setState(() {
                        //here add backend of subscribe
                        afterButtonPress(); // function that makes the change on button press
                      });
                      print("button pressed");
                    },

                ),
              ),
            ],
          ),
          ),
            SliverFillRemaining(
              hasScrollBody: true,
              child: FacultyPost(),
                ),
          ],
        ),

    ),
      bottomNavigationBar:MyBottomNavigationBar(),
    );
  }
}

