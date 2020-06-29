import 'package:flutter/material.dart';

import 'package:supportship/Data/data_definitions.dart';

// Widget for when we need a circle image
class CircleImage extends StatelessWidget {
  final CircleImageData circleImageData;

  CircleImage({this.circleImageData});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: circleImageData.size,
        height: circleImageData.size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("${circleImageData.image}"))));
  }
}
