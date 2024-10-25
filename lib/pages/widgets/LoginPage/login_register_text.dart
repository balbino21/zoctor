import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoctor/pages/register_page.dart';
import '../../../core/app_pallete.dart';

class LoginRegisterText extends StatelessWidget {
  const LoginRegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        GestureDetector(
          onTap: () {
            Get.to(RegisterPage());
          },
          child: const Text(
            " Register now",
            style: TextStyle(color: AppPallete.teal),
          ),
        ),
      ],
    );
  }
}
