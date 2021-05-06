import 'package:flutter/material.dart';
import 'package:assignment/my_flutter_app_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.yellow[50],
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Contact Us!',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.facebook_square),
          label: 'Facebook',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.instagram_square),
          label: 'Instagram',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.whatsapp),
          label: 'Whatsapp',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.brown[500],
      unselectedItemColor: Colors.grey[700],
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
