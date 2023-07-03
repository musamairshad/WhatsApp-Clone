import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/screens/home.dart';

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
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 260),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
          ),
          const SizedBox(height: 210),
          Text(
            'from',
            style: GoogleFonts.lato(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 7.0),
          Image.asset(
            'assets/images/meta-logo.png',
            fit: BoxFit.cover,
            height: 30.0,
            width: 120.0,
          ),
        ],
      ),
    );
  }
}
