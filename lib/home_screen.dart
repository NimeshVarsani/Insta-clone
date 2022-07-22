import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/pages/account.dart';
import 'package:insta_clone/pages/home.dart';
import 'package:insta_clone/pages/like.dart';
import 'package:insta_clone/pages/reels.dart';
import 'package:insta_clone/pages/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _children = [
    Home(),
    Search(),
    Reels(),
    Like(),
    Account(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.black,),
            label: '',
            activeIcon: Icon(FontAwesomeIcons.house, color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, color: Colors.black),
            label: '',
            activeIcon: Icon(Icons.search_outlined, color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face, color: Colors.black),
            label: '',
            activeIcon: Icon(Icons.face, color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart, size: 25,color: Colors.black),
            label: '',
            activeIcon: Icon(FontAwesomeIcons.solidHeart, size: 25,color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user, size: 25,color: Colors.black),
            label: '',
            activeIcon: Icon(FontAwesomeIcons.solidUser, size: 25,color: Colors.black,),
          ),
        ],
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 28.0,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        onTap: _onItemTapped,
      ),
      body: _children[_selectedIndex],
    );
  }
}
