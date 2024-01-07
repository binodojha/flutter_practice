import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            radius: 2.0,
            center: Alignment.center,
            colors: [
              Colors.lightGreen,
              Colors.lightBlue,
            ],
          ),
        ),
        child: Center(
          child: Text(
            "Flutter Practice App",
            style: TextStyle(
              fontSize: 25,
              backgroundColor: Colors.white70,
              color: Colors.blue[900],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
