import 'package:flutter/material.dart';

import 'package:supportship/my_post.dart';

// widget for user's public post history in profile page
class FacultyPost extends StatelessWidget {
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