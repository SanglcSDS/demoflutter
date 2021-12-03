import 'package:flutter/material.dart';

import 'package:news_app/views/account_view.dart';
import 'package:news_app/views/favorite_view.dart';
import 'package:news_app/views/home_view.dart';
import 'package:news_app/views/search_view.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _bottomNavView = [
    HomeView(),
    SearchView(),
    FavoriteView(),
    AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: _navBarList
            .map(
              (e) => BottomNavigationBarItem(
                icon: e.icon,
                title: Text(e.title),
              ),
            )
            .toList(),
      ),
    );
  }
}

class NavBarItem {
  final Widget icon;
  final String activeIcon;
  final String title;
  NavBarItem({this.icon, this.activeIcon, this.title});
}

List<NavBarItem> _navBarList = [
  NavBarItem(
    icon: Icon(Icons.home),
    title: "Trang chủ",
  ),
  NavBarItem(
    icon: Icon(Icons.new_label_sharp),
    title: "Giới thiệu",
  ),
  NavBarItem(
    icon: Icon(Icons.contacts),
    title: "Tin tức",
  ),
  NavBarItem(
    icon: Icon(Icons.contacts),
    title: "Thư viện",
  ),
];
