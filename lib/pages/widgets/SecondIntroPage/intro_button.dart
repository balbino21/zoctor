import 'package:flutter/material.dart';
import 'package:zoctor/core/app_pallete.dart';
import 'package:zoctor/pages/login_page.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: AppPallete.tealAccent,
        backgroundColor: AppPallete.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: AppPallete.tealAccent, width: 2),
        ),
        padding: EdgeInsets.zero,
        fixedSize: const Size(35, 60),
      ),
      child: const Icon(Icons.arrow_forward, size: 35),
    );
  }
}
