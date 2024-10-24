import 'package:flutter/material.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          'assets/images/health.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
