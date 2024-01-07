import "package:flutter/material.dart";
import "dart:math";

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  double leftAngle = 0.0;
  double rightAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[100],
        title: const Text(
          "Dice App",
          style: TextStyle(
            color: Colors.indigoAccent,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffa1c4fd),
              Color(0xffc2e9fb),
            ],
          ),
        ),
        child: Row(
          children: [
            // Expanded(
            //   child: InkWell(
            //     onTap: () {
            //       setState(() {
            //         leftDiceNumber = Random().nextInt(6) + 1;
            //         leftAngle = Random().nextDouble() * 45;
            //       });
            //     },
            //     child: Transform.rotate(
            //       angle: leftAngle,
            //       child: Image.asset(
            //         "assets/images/dice$leftDiceNumber.png",
            //         height: 150.0,
            //         width: 150.0,
            //         color: Colors.red,
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                    rightAngle = Random().nextDouble() * 45;
                  });
                },
                child: Transform.rotate(
                  angle: rightAngle,
                  child: Container(
                    // color: Colors.white,
                    child: Image.asset(
                      "assets/images/dice$rightDiceNumber.png",
                      color: Colors.black,
                      height: 200.0,
                      width: 200.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
