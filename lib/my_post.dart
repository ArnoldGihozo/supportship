import 'package:flutter/material.dart';

import 'package:supportship/Data/data_definitions.dart';
import 'package:supportship/Components/circle_image.dart';
import 'package:supportship/utilities/myBottomNavigationBar.dart';

final circleImageData =
    CircleImageData(size: 30.0, image: "https://picsum.photos/200");

class MyPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: CircleImage(circleImageData: circleImageData)),
              Text("username"),
              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("date")),
            ],
          ),
          Image.network(
            "${circleImageData.image}",
            fit: BoxFit.cover,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar, velit vel efficitur pretium, turpis lectus lacinia felis, ut interdum lectus mi auctor est. Proin a metus id lectus auctor ultrices ut a urna. Sed sed tellus sit amet nunc dictum scelerisque at et magna. Ut luctus pharetra nam."),
          ),
          Row(
            // SizedBox serves as padding
            children: [
              SizedBox(
                width: 10,
                height: 50, // takes into account size of icons
              ),
              Icon(Icons.comment),
              SizedBox(width: 10),
              Text("###"),
              Spacer(),
              Icon(Icons.arrow_upward),
              SizedBox(width: 10),
              Text("###"),
              SizedBox(width: 10),
              Icon(Icons.arrow_upward),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
    
  }
  
}
