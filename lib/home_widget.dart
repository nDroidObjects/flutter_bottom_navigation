import 'package:flutter/material.dart';

import 'placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.blue[100], "Home Screen!!", "height.png"),
    PlaceholderWidget(Colors.deepPurple[100], "Messages Screen!!",  "email.png"),
    PlaceholderWidget(Colors.green[100], "Profile Screen!!",  "phone.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
        leading: new Icon(Icons.apps),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'More',
            onPressed: () {

            },
          ),
        ],
      ),

      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
