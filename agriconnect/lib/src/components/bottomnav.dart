import 'package:agriconnect/src/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNav extends StatefulWidget {
  int selectedIndex;
  BottomNav(this.selectedIndex);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  void _changeIndex(int index) {
    setState(() {
      widget.selectedIndex = index;
    });

    switch (index) {
      case 0:
        goRouter.push('/farmer');
      case 1:
        goRouter.push('/mandi');
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
        currentIndex: widget.selectedIndex,
        onTap: _changeIndex,
      ),
    );
  }
}
