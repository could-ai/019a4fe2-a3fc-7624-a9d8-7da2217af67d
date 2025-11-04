import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.monetization_on, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            Text(
              'Big Income 24',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
