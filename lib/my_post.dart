import 'package:flutter/material.dart';

import 'package:supportship/Data/data_definitions.dart';
import 'package:supportship/Components/circle_image.dart';
import 'package:supportship/utilities/constants.dart';

final circleImageData =
    CircleImageData(size: 30.0, image: "https://picsum.photos/200");

class MyPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Card(
      color: Color(0xFFE9E9E9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Padding(
                  padding:EdgeInsets.fromLTRB(50.0,20.0,0.0,0.0),
                  child: CircleImage(circleImageData: circleImageData)
              ),
              Text("username"),
             Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text("date")),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Image.network(
              "${circleImageData.image}",
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
//            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar, velit vel efficitur pretium, turpis lectus lacinia felis, ut interdum lectus mi auctor est. Proin a metus id lectus auctor ultrices ut a urna. Sed sed tellus sit amet nunc dictum scelerisque at et magna. Ut luctus pharetra nam."),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
            child: Row(
              children: [
//              SizedBox(
//                width: 10,
//                height: 50, // takes into account size of icons
//              ),
                IconButton(
                  icon: Icon(Icons.comment),
                  color: kYellow,
                  onPressed: (){
                    Navigator.pushNamed(context,'/Comment');
                  },
                ),


                SizedBox(width: 10),
                Text("###"),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.arrow_upward),
                    color: kYellow,
                    onPressed: (){
                      //Todo add code for  Upvotes
                    },
                ),
                SizedBox(width: 10),
                Text("###"),
                SizedBox(width: 10),
                IconButton(
                    icon: Icon(Icons.arrow_downward),
                    color: kYellow,
                    onPressed: (){
                      //Todo add code for downVotes
                    },
                ),
                SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
    
  }
  
}
