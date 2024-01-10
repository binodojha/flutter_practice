import 'package:flutter/material.dart';
import 'package:my_app/quizBrain.dart';

class QuizePage extends StatefulWidget {
  @override
  State<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  List<Icon> scoreKepper = [];
  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade500,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade800,
          appBar: AppBar(
            centerTitle: true,
            foregroundColor: Colors.white,
            backgroundColor: Colors.grey.shade700,
            title: const Text(
              "Quiz App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        quizBrain.getQuestion(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        if (quizBrain.getAnswer() == true) {
                          scoreKepper.add(
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          );
                        } else {
                          scoreKepper.add(
                            const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          );
                        }
                        setState(
                          () {
                            quizBrain.nextQuestions();
                            if (scoreKepper.length == 15) {
                              scoreKepper = [];
                            }
                          },
                        );
                      },
                      child: const Text(
                        "True",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        if (quizBrain.getAnswer() == false) {
                          scoreKepper.add(
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          );
                        } else {
                          scoreKepper.add(
                            const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          );
                        }
                        setState(() {
                          quizBrain.nextQuestions();
                          if (scoreKepper.length == 15) {
                            scoreKepper = [];
                          }
                        });
                      },
                      child: const Text(
                        "False",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: scoreKepper,
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
