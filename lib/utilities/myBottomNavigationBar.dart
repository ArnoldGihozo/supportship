import 'package:flutter/material.dart';

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
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon( Icons.home,size: 38.0,),
            color: Colors.black,
            highlightColor: Colors.red,
            focusColor: Colors.green,
            splashColor: Colors.pink,
            onPressed: () {
              Icon(Icons.home, size: 38.0, color: Colors.grey);

              Navigator.pushReplacementNamed(context, '/Home');
            },
            
          ),
          IconButton(
            icon: Icon(
              Icons.book,
              size: 38.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/Home');
            },
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle, 
              size: 38.0
              ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/Home');
            },
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(
              Icons.message,
              size: 38.0,
            ),
            onPressed: () {
              Icon(Icons.home, size: 38.0, color: Colors.grey);

              Navigator.pushReplacementNamed(context, '/Home');
            },
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              size: 38.0,
            ),
            onPressed: () {
              Icon(Icons.home, size: 38.0, color: Colors.grey);

              Navigator.pushReplacementNamed(context, '/Home');
            },
           color: Colors.black,
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
