import 'package:flutter/material.dart';
import 'package:scan37/screens/home.dart';
import 'package:scan37/screens/recherche.dart';
import 'package:scan37/screens/videos.dart';

import '../screens/profil.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    Home(),
    Search(),
    Videos(),
    Profilpage(),
  ];
  int currentIndex = 0;
  void navigate(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: navigate,
        currentIndex: currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 2,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: 'Videos', icon: Icon(Icons.video_camera_back)),
          BottomNavigationBarItem(
              label: 'compte', icon: CircleAvatar(child: Icon(Icons.person))),
        ],
      ),
    );
  }
}
