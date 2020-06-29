import 'package:flutter/material.dart';

import 'package:supportship/my_post.dart';
import 'package:supportship/Data/data_definitions.dart';
import 'package:supportship/Components/circle_image.dart';

// This is the profile view for each user

final circleImageData =
    CircleImageData(size: 120.0, image: "https://picsum.photos/200");

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('username'),
        ),
        body: Column(
          children: <Widget>[
            CircleImage(circleImageData: circleImageData),
            Text(
                "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."),
            FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)),
                onPressed: () {
                  print("button pressed");
                },
                child: Text("message"))
          ],
        ));
  }
}
