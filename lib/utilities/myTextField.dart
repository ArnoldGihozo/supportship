import 'package:flutter/material.dart';
import 'constants.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final String labelText;
  final Color fillColor;
  final Color hintTextColor;

  MyTextField({
    @required this.hintText,
    this.maxLines,
    this.labelText,
    this.fillColor,
    this.hintTextColor,
  });
  @override
  Widget build(BuildContext context) {
    return  Material(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      elevation: kTextElevation,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: maxLines,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x00000029), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x00000029), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
      ),
    );
  }
}
