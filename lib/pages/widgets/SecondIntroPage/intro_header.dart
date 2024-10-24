import 'package:flutter/material.dart';
import '../../../core/app_pallete.dart';
import 'header_title.dart';
import 'header_subtitle.dart';
import 'header_description.dart';
import 'intro_button.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppPallete.tealAccent.withOpacity(0.2),
            AppPallete.white.withOpacity(0.3),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderTitle(),
          HeaderSubtitle(),
          HeaderDescription(),
          SizedBox(height: 40),
          IntroButton(),
        ],
      ),
    );
  }
}
