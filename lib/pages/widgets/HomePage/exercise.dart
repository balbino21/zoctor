import 'package:flutter/material.dart';
import '../../../core/app_pallete.dart';

class Exercise extends StatelessWidget {
  final String label;

  const Exercise({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppPallete.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
