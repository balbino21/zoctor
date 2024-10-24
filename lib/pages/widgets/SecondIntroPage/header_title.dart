import 'package:flutter/material.dart';
import 'package:zoctor/core/app_pallete.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'SKY HEALTH',
        style: TextStyle(
          fontSize: 28,
          color: AppPallete.tealAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
