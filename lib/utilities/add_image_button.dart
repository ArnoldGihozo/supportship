import 'package:flutter/material.dart';

class AddImageButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xFFF4F4F4),
      radius: 70.0,
      child: Icon(
        Icons.add_photo_alternate,
        size: 50.0,
        color: Color(0xFFB0B0B0),
      ),
    );
  }
}