import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoogleSignInButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Image.asset('assets/icons/google_icon.png'),
        iconSize: 50,
        onPressed: onPressed,
      ),
    );
  }
}
