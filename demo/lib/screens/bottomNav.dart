import 'package:demo/screens/homedemo.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    Homes(),
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
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: onTabTapped,
          currentIndex:
              _currentIndex, // this will be set when a new tab is tapped
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call_rounded),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}

class Homes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Homes"));
  }
}

class Libraries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Libraries"));
  }
}

class Learning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Learning"));
  }
}
