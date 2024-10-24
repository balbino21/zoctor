import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zoctor/core/app_pallete.dart';


class BottomNavigationBarr extends StatefulWidget {
  const BottomNavigationBarr({super.key});

  @override
  _BottomNavigationBarrState createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  int myIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: AppPallete.black,
        color: AppPallete.white,
        activeColor: AppPallete.white,
        gap: 8,


        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.fitness_center,
            text: 'Fitness',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
        selectedIndex: myIdx,
        onTabChange: (idx) {
          setState(() {
            myIdx = idx;
          });
        },
      ),
    );
  }
}
