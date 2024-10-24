import 'package:flutter/material.dart';

import '../../../core/app_pallete.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Text(
          'LOGIN',
          style: TextStyle(color: AppPallete.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: AppPallete.tealAccent, width: 4),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20),
        ),
      ),
    );
  }
}
