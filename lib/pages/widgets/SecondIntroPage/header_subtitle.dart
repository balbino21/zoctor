import 'package:flutter/material.dart';
import 'package:zoctor/core/app_pallete.dart';

class HeaderSubtitle extends StatelessWidget {
  const HeaderSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'IMPROVE YOUR LIFESTYLE',
        style: TextStyle(
          fontSize: 20,
          color: AppPallete.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
