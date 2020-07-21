import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supportship/utilities/constants.dart';
import 'package:supportship/utilities/myTextField.dart';
import 'package:supportship/utilities/add_image_button.dart';

class MakePostScreen extends StatefulWidget {
  @override
  _MakePostScreenState createState() => _MakePostScreenState();
}

class _MakePostScreenState extends State<MakePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: kPink,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Home');
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Create a Post',
          style: TextStyle(
            color: kPink,
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              'POST',
              style: TextStyle(
                color: kPink,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
//
              MyTextField(
                hintText: 'Title',
                hintTextColor: Color(0xFFB0B0B0),
              ),

              SizedBox(
                height: 30.0,
              ),
              MyTextField(
                hintText: 'Text',
                maxLines: 8,
                fillColor: kLightGrey,
                hintTextColor: kDarkGrey ,
              ),
              SizedBox(
                height: 40.0,
              ),

              GestureDetector(
                onTap: () {
                  //TODO
                  print('tapped');
                },
                child: AddImageButton(),
              ),
              SizedBox(
                height: 10.0,
              ),

              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 230.0,
                child: MyTextField(
                  hintText: 'Tags',
                  hintTextColor: Color(0xFFB0B0B0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

