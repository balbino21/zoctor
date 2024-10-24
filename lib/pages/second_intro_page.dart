import 'package:flutter/material.dart';
import 'widgets/SecondIntroPage/intro_header.dart';
import 'widgets/SecondIntroPage/intro_image.dart';

class SecondIntroPage extends StatelessWidget {
  const SecondIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              IntroHeader(),
              IntroImage(),
            ],
          ),
        ),
      ),
    );
  }
}
