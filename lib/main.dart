import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/AnimatedPage.dart';
import 'package:my_app/DiceApp.dart';
import 'package:my_app/SplashScreen.dart';
import 'package:my_app/TrailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterApp",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  String appTitle = 'Flutter Practice';
  var arrNames = [
    "Binod",
    "Kamal",
    "Chitray",
    "Dilendra",
    "Bhoj",
    "Niraj",
    "Ramesh",
    "Ravi",
    "Raghab"
  ];

  HomePage({super.key});
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Practice"),
        backgroundColor: Colors.purple[200],
        foregroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
      ),

      // for switching to another page TrailPage
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  BuildContext,
                  MaterialPageRoute(
                    builder: (context) => TrailPage(),
                  ),
                );
              },
              child: const Text(
                "Click for Counter Page",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // For Animated Page
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  BuildContext,
                  MaterialPageRoute(
                    builder: (context) => AnimatedPage(),
                  ),
                );
              },
              child: const Text(
                "Click for Animated Page",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // For Dice Game Page
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  BuildContext,
                  MaterialPageRoute(
                    builder: (context) => DicePage(),
                  ),
                );
              },
              child: const Text(
                "Click for Dice Game Page",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),

            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
