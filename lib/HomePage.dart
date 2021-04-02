import 'package:flutter/material.dart';
import 'helpers/placeholder_widget.dart';
import 'helpers/Constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.lightBlueAccent)
  ];

  @override
  Widget build(BuildContext context) {

    // 3c
    final PageHomeButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/pageshome');
          },
          padding: EdgeInsets.all(12),
          elevation: 3,
          color: Colors.white,
          child: Text(homePageButtonText),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('智慧藥盒'),
        centerTitle: true,
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            onPressed: () {
              Navigator.pushNamed(
                  context, '/register');
            },
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),

          new BottomNavigationBarItem(
            icon: Icon(Icons.source_outlined),
            title: Text('record'),
          ),

          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
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