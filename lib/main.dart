import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoctor/pages/first_intro_page.dart';
import 'core/app_pallete.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'zoctor',
      theme: ThemeData(
        primarySwatch: AppPallete.teal,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: const FirstIntroPage(),
    );
  }
}
