import 'package:flutter/material.dart';
import 'package:zoctor/core/app_pallete.dart';

class FirstIntroText extends StatelessWidget {
  const FirstIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'IMPROVE YOUR LIFESTYLE',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontSize: 22),
        ),
        const SizedBox(height: 10),
        Text(
          'Striving to improve community health care and practices',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppPallete.black),
        ),
      ],
    );
  }
}
