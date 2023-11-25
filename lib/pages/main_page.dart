import 'package:buttom_nav_bar/pages/accountPage.dart';
import 'package:buttom_nav_bar/pages/homePage.dart';
import 'package:buttom_nav_bar/pages/messagesPage.dart';
import 'package:buttom_nav_bar/pages/settingsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void navigationBarButton(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const MessagesPage(),
    const AccountPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        color: Colors.grey[400],
        padding: const EdgeInsets.all(15),
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        backgroundColor: Colors.grey.shade500,
        tabBorderRadius: 12,
        onTabChange: navigationBarButton,
        curve: Curves.linear,
        gap: 12,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            textStyle: TextStyle(color: Colors.blue[900]),
            iconActiveColor: Colors.blue[900],
          ),
          GButton(
            icon: Icons.message,
            text: 'Messages',
            textStyle: TextStyle(color: Colors.pink[900]),
            iconActiveColor: Colors.pink[900],
          ),
          GButton(
            icon: Icons.person,
            text: 'Account',
            textStyle: TextStyle(color: Colors.cyan[900]),
            iconActiveColor: Colors.cyan[900],
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
            textStyle: TextStyle(color: Colors.brown[900]),
            iconActiveColor: Colors.brown[900],
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
