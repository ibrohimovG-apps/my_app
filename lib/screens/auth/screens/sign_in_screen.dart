import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart';
import 'package:my_app/base/utils/all_json.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (username == "gulomnazir" && password == "1234") {
      Navigator.pushNamed(context, AppRoutes.homePage);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            "Invalid username or password!",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor:
              const Color.fromARGB(255, 255, 69, 58), // Chiroyli qizil rang
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bg_color,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Enter your credential to login",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 80),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'Username',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite),
                  backgroundColor: const Color.fromARGB(255, 4, 63, 90),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              const Text(
                "Forgot password?",
                style: TextStyle(
                  color: Color.fromARGB(255, 4, 63, 90),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.signUpScreen);
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 63, 90),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
