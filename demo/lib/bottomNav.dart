import 'package:demo/constants.dart';
import 'package:demo/screens/Libraries.dart';
import 'package:demo/screens/homeScreen.dart';
import 'package:demo/screens/learning.dart';
import 'package:demo/screens/news.dart';
import 'package:demo/screens/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    Profile(),
    News(),
    Libraries(),
    Learning(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: kGrey1,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Giới thiệu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Tin tức',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add),
              label: 'Thư viện',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add),
              label: 'E-Learning',
            )
          ],
        ),
      ),
    );
  }
}
