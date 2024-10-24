import 'package:flutter/material.dart';
import 'package:zoctor/core/app_pallete.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RegisterButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Color.fromARGB(255, 0, 255, 195), width: 4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        ),
        child: const Text(
          'REGISTER',
          style: TextStyle(color: AppPallete.white),
        ),
      ),
    );
  }
}
