import 'package:flutter/material.dart';

import 'package:supportship/Data/data_definitions.dart';
import 'package:supportship/Components/circle_image.dart';
import 'package:supportship/Components/public_history.dart';
import 'package:supportship/Components/private_history.dart';
import 'package:supportship/utilities/myBottomNavigationBar.dart';

// This is the profile view for each user

final circleImageData =
    CircleImageData(size: 120.0, image: "https://picsum.photos/200");

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('username'),
        elevation: 0.0,
      ),
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 350,
              flexibleSpace: Column(
                children: [
                  SizedBox(height: 20), // adds padding between each component
                  CircleImage(circleImageData: circleImageData),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
                    child: Text(
                      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)),
                      onPressed: () {
                        print("button pressed");
                      },
                      child: Text("message")),
                ],
              ),
              bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(color: Colors.blue),
                tabs: [
                  Tab(icon: Icon(Icons.history)),
                  Tab(icon: Icon(Icons.lock)),
                ],
              ),
            ),
            SliverFillRemaining(
                child: TabBarView(
              children: [
                MyPublicHistory(),
                MyPrivateHistory(),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
