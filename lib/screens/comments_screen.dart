import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Color(0xFFF76A63),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Home');
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Comments',
          style: TextStyle(
            color: Color(0xFFF76A63),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Container()),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              size: 40,
            ),
            title: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Add a comment...',
              ),
            ),
            trailing: FlatButton(
              onPressed: () {
                print('add comment');
              },
              child: Text('Post'),
            ),
          ),
        ],
      ),
    );
  }
}