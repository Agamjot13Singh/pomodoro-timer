import 'package:flutter/material.dart';
import 'package:pomodoro/home_page_entrance.dart';
import 'package:pomodoro/setting_page.dart';
// import 'package:pomodoro/src/center_widget.dart';
// import 'package:pomodoro/src/home_page_detailed.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text('Activity'),
    ),
    HomePageEntry(),
    SettingsPage(),
    Center(
      child: Text('Account'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: tabs[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text(""),
            selectedColor: Color(0xfff4643B8),
            unselectedColor: Colors.white,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(
              Icons.watch_later_outlined,
            ),
            title: Text(""),
            selectedColor: Color(0xfff4643B8),
            unselectedColor: Colors.white,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.settings),
            title: Text(""),
            selectedColor: Color(0xfff4643B8),
            unselectedColor: Colors.white,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text(""),
            selectedColor: Color(0xfff4643B8),
            unselectedColor: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
