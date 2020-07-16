import 'package:flutter/material.dart';
import 'constants.dart';


class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  AnimationController _iconAnimationController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.only(top: 2, bottom: 30),
      color: kYellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon( Icons.home,size: 38.0,),
            color: kIconColor,
            highlightColor: Colors.red,
            focusColor: Colors.green,
            splashColor: Colors.pink,
            onPressed: () {
//              Icon(Icons.home, size: 38.0, color: kIconColor);

              Navigator.pushReplacementNamed(context, '/Home');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.book,
              size: 38.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/JournalPost');
            },
            color: kIconColor,
          ),
          IconButton(
            icon: Icon(Icons.add_circle, size: 38.0),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/RegularPost');
            },
            color: kIconColor,
          ),
          IconButton(
            icon: Icon(
              Icons.message,
              size: 38.0,
            ),
            onPressed: () {
              Icon(Icons.home, size: 38.0, color:kIconColor);

              Navigator.pushNamed(context, '/Message');
            },
            color: kIconColor,
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              size: 38.0,
            ),
            onPressed: () {
              Icon(Icons.home, size: 38.0, color: kIconColor);

              Navigator.pushReplacementNamed(context, '/Profile');
            },
           color: kIconColor,
          ),
        ],
      ),
    );
  }

  bool get animationStatus {
    final AnimationStatus status = _iconAnimationController.status;
    return status == AnimationStatus.completed;
  }
}
