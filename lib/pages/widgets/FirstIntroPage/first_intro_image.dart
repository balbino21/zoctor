import 'package:flutter/material.dart';

class FirstIntroImage extends StatelessWidget {
  const FirstIntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/health.png',
      height: 250,
    );
  }
}
