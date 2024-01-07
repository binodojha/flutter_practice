import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  @override
  State<AnimatedPage> createState() {
    return _AnimatedPageState();
  }
}

class _AnimatedPageState extends State<AnimatedPage> {
  var bHeight = 100.0;
  var bWidth = 200.0;
  bool flag = true;
  var myOpacity = 1.0;

  Decoration myDecor = const BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue.shade200,
      appBar: AppBar(
        title: const Text(
          "Animation Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.tealAccent.shade100,
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffa18cd1),
              Color(0xfffbc2eb),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                // curve: Curves.bounceOut,
                duration: const Duration(seconds: 2),
                height: bHeight,
                width: bWidth,
                decoration: myDecor,
                child: Center(
                  child: AnimatedOpacity(
                    // curve: Curves.bounceOut,
                    opacity: myOpacity,
                    duration: const Duration(seconds: 2),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/boy.png'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (flag == true) {
                      bHeight = 200.0;
                      bWidth = 200.0;
                      myOpacity = 0.0;
                      myDecor = const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      );
                      flag = false;
                    } else {
                      bHeight = 100.0;
                      bWidth = 200.0;
                      myOpacity = 1;
                      myDecor = const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      );
                      flag = true;
                    }
                  });
                },
                child: const Text(
                  "Click for Animation",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
