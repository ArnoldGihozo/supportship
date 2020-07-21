import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supportship/utilities/constants.dart';
import 'package:supportship/utilities/myTextField.dart';
import 'package:supportship/utilities/add_image_button.dart';

class JournalPostScreen extends StatefulWidget {
  @override
  _JournalPostScreenState createState() => _JournalPostScreenState();
}

class _JournalPostScreenState extends State<JournalPostScreen> {
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
          'Journal Entry',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Material(
                    color: kTeal,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 3.0,
                    child: MaterialButton(
                      onPressed: () {
                        //Todo make it public
                      },
                      minWidth: 105.0,
                      height: 42.0,
                      child: Text(
                        'PUBLIC',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Material(
                    color: kYellow,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 3.0,
                    child: MaterialButton(
                      onPressed: () {
                        //Todo make it private
                      },
                      minWidth: 105.0,
                      height: 42.0,
                      child: Text(
                        'PRIVATE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
//
              MyTextField(
                hintText: 'Title',
                hintTextColor: kDarkGrey,
              ),

              SizedBox(
                height: 30.0,
              ),
              MyTextField(
                hintText: 'Text',
                maxLines: 8,
                fillColor: kLightGrey,
                hintTextColor: kDarkGrey,
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
            ],
          ),
        ),
      ),
    );
  }
}