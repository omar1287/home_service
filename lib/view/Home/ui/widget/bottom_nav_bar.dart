import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/view/Home/ui/category_screen.dart';
import 'package:home_services/view/Home/ui/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  int _currentIndex = 0;
  List<Widget> body = const [
    Home(),
    Category(),
    Text('Bookmark'),
    Text('Message'),
    Text('Profile'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: ColorManager.dark_blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Bookmark'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
