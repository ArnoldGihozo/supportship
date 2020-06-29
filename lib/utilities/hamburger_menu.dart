import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supportship/screens/homePage.dart';

class HamburgerMenu extends StatefulWidget {
  _HamburgerMenuState createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[100],
        child: new ListView(
          padding: EdgeInsets.only(bottom: 20),
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ); // Na vigation
              },
            ),

            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Forum'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ); // Na vigation
              },
            ),

            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Student Groups'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ); // Na vigation
              },
            ),

            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Services'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ); // Na vigation
              },
            ),
        
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text('Logout'),
              onTap: () => alertDialog(context),

            ),
          ],
        ),
      ),
    );
  }

  bool alertDialog(BuildContext context) {
    _showDialog();
  }

  _showDialog() {
    bool logOff = false;
    return showDialog(
      context: context,
      child: new CupertinoAlertDialog(
        title: new Text(" Loging Off"),
        content: Text("Are you sure you want to log-off?"),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () => {
              logOff = false,
              Navigator.of(context).pop(),
              print(logOff),
            },
          ),
          FlatButton(
            child: Text(
              "Yes",
              style: TextStyle(
                color: Color(0xffddac00),
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              logOff = true;
              Navigator.of(context).pop();
             // Navigator.push(
               // context,
               // MaterialPageRoute(
                  //builder: (context) => LoginScreen(),
               // ),
              //); // Navigation
              print("final:");
              print(logOff);
            },
          ),
        ],
      ),
    );
  }
} // _showDialog
