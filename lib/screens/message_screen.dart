import 'package:flutter/material.dart';
import 'package:supportship/utilities/constants.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: null,
          title: Text(
            'Chat',
            style: TextStyle(
              fontSize: 25.0,
            )
          ),
          backgroundColor: kYellow,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.close),
                onPressed: (){
                  Navigator.pop(context);
                },
            ),

          ],
        ),
            body: SafeArea(
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text('Username'),
                        leading: CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                        trailing: Icon(Icons.message),
                        onTap: (){
                          Navigator.pushNamed(context,'/Chat');
                        }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),
                      ListTile(
                          title: Text('Username'),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          trailing: Icon(Icons.message),
                          onTap: (){
                            Navigator.pushNamed(context,'/Chat');
                          }
                      ),








                  ],),
                ),
            ),

    );


  }
}