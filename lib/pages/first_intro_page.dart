import 'package:flutter/material.dart';
import 'widgets/FirstIntroPage/first_intro_buttons.dart';
import 'widgets/FirstIntroPage/first_intro_image.dart';
import 'widgets/FirstIntroPage/first_intro_text.dart';

class FirstIntroPage extends StatelessWidget {
  const FirstIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            FirstIntroImage(),
            SizedBox(height: 20),
            FirstIntroText(),
            Spacer(),
            FirstIntroButtons(),
          ],
        ),
      ),
    );
  }
}
