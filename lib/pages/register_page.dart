import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:zoctor/pages/login_page.dart';
import 'widgets/RegisterPage/input_pasword_field.dart';
import 'widgets/RegisterPage/register_button.dart';
import 'widgets/RegisterPage/rounded_input_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isLoading = false;

  Future<void> _registerWithEmailAndPassword() async {
    setState(() {
      _isLoading = true;
    });

    try {
      if (_passwordController.text.trim() !=
          _confirmPasswordController.text.trim()) {
        throw FirebaseAuthException(message: "Passwords not match", code: '');
      }

      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      if (userCredential.user != null) {
        await userCredential.user?.updateProfile(
          displayName:
              '${_firstNameController.text.trim()} ${_lastNameController.text.trim()}',
        );
        Get.off(const LoginPage());
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Registration failed: ${e.message}")),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'REGISTER',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),

                // First Name Input
                RoundedInputField(
                  hintText: 'First Name',
                  icon: Icons.person,
                  controller: _firstNameController,
                ),

                const SizedBox(height: 15),

                // Last Name Input
                RoundedInputField(
                  hintText: 'Last Name',
                  icon: Icons.person,
                  controller: _lastNameController,
                ),

                const SizedBox(height: 15),

                // Email Input
                RoundedInputField(
                  hintText: 'Email',
                  icon: Icons.email,
                  controller: _emailController,
                ),

                const SizedBox(height: 15),

                // Password Input
                RoundedPasswordField(
                  hintText: 'Password',
                  controller: _passwordController,
                ),

                const SizedBox(height: 15),

                // Confirm Password Input
                RoundedPasswordField(
                  hintText: 'Confirm Password',
                  controller: _confirmPasswordController,
                ),

                const SizedBox(height: 20),

                // Register Button
                _isLoading
                    ? const CircularProgressIndicator()
                    : RegisterButton(
                        onPressed: _registerWithEmailAndPassword,
                      ),

                const SizedBox(height: 20),

                // Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Text(
                        " Login",
                        style:
                            TextStyle(color: Color.fromARGB(255, 0, 255, 195)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
