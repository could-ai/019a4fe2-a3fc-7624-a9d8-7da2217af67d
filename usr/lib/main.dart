import 'package:big_income_24/screens/home_screen.dart';
import 'package:big_income_24/screens/login_screen.dart';
import 'package:big_income_24/screens/register_screen.dart';
import 'package:big_income_24/screens/splash_screen.dart';
import 'package:big_income_24/screens/task_screen.dart';
import 'package:big_income_24/screens/withdraw_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Big Income 24',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/tasks': (context) => const TaskScreen(),
        '/withdraw': (context) => const WithdrawScreen(),
      },
    );
  }
}
