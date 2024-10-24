import 'package:flutter/material.dart';
import 'package:zoctor/core/app_pallete.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      color: AppPallete.tealAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back!',
                    style: TextStyle(color: AppPallete.black, fontSize: 18),
                  ),
                  
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: AppPallete.black,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search, color: AppPallete.teal),
                hintText: 'Search...',
                hintStyle: TextStyle(color: AppPallete.white, fontSize: 18),
                border: InputBorder.none,
              ),
              style: TextStyle(color: AppPallete.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
