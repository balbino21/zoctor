import 'package:flutter/material.dart';

import 'widgets/HomePage/bottom_navigation_bar.dart';
import 'widgets/HomePage/doctor_section.dart';
import 'widgets/HomePage/exercise_section.dart';
import 'widgets/HomePage/greeting_section.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigationBarr(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GreetingSection(),
              SizedBox(height: 20.0),
              DoctorSection(),
              SizedBox(height: 30.0),
              ExerciseSection(),
            ],
          ),
        ),
      ),
    );
  }
}
