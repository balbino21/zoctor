import 'package:flutter/material.dart';
import 'package:zoctor/core/app_pallete.dart';

class HeaderDescription extends StatelessWidget {
  const HeaderDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Column(
        children: [
          Text(
            'Striving to improve',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              wordSpacing: 3,
              fontWeight: FontWeight.bold,
              color: AppPallete.black54,
            ),
          ),
          Text(
            'community health',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppPallete.black54,
            ),
          ),
          Text(
            'care and practices',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppPallete.black54,
            ),
          ),
        ],
      ),
    );
  }
}
