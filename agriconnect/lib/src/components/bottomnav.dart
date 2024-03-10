import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: "Person"),
          BottomNavigationBarItem(
              icon: Icon(Icons.house_rounded), label: "Mandi"),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outlined), label: "Info")
        ],
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
      ),
    );
  }
}
