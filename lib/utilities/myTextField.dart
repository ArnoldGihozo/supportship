import 'package:flutter/material.dart';
import 'constants.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Icon icon;

  MyTextField({@required this.hintText, this.icon});
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFE3E3E3),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding:
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: mainColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: mainColor, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        prefixIcon: icon,
      ),
    );
  }
}



