import 'package:flutter/material.dart';
import 'exercise.dart';

class ExerciseSection extends StatelessWidget {
  const ExerciseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Exercise Service',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Exercise(label: 'Easy'),
              Exercise(label: 'Moderate'),
              Exercise(label: 'Advanced'),
            ],
          ),
        ),
      ],
    );
  }
}
