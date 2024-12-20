import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/base/utils/all_json.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Animation setup
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _controller.forward();

    // Navigate to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, AppRoutes.signInScreen);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Ticket Icon
                Icon(
                  Icons.confirmation_num,
                  size: 100.0,
                  color: Colors.white.withOpacity(0.8),
                ),
                const SizedBox(height: 20),
                // App Name
                const Text(
                  "TicketMaster",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                // Tagline
                const Text(
                  "Your Gateway to Events",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
