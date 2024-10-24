import 'package:flutter/material.dart';
import 'package:zoctor/core/app_pallete.dart';
import 'package:zoctor/pages/login_page.dart';
import 'package:zoctor/pages/second_intro_page.dart';

class FirstIntroButtons extends StatelessWidget {
  const FirstIntroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          child: const Text(
            'Skip',
            style: TextStyle(color: AppPallete.black),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondIntroPage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: AppPallete.tealAccent,
            backgroundColor: AppPallete.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
              side: const BorderSide(color: AppPallete.tealAccent),
            ),
            padding: EdgeInsets.zero,
            fixedSize: const Size(30, 60),
          ),
          child: const Icon(Icons.arrow_forward, size: 30),
        ),
      ],
    );
  }
}
