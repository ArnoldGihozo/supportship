import 'package:flutter/material.dart';

import 'package:supportship/my_post.dart';

// users home screen
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        return MyPost();
      },
    );
  }
}
