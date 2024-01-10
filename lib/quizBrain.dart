class Question {
  late String questions;
  late bool answers;
  Question({String? q, bool? a}) {
    questions = q!;
    answers = a!;
  }
}

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        q: 'The Earth is the only planet in our solar system that supports life',
        a: false),
    Question(q: 'The Pacific Ocean is the largest ocean on Earth', a: true),
    Question(q: 'Mount Everest is the tallest mountain in the world', a: true),
    Question(q: 'Honey never spoils', a: true),
    Question(q: 'The Statue of Liberty was a gift from France', a: true),
    Question(q: 'Light travels faster than sound', a: true),
    Question(
        q: "The Amazon rainforest produces 20% of the world's oxygen", a: true)
  ];

  void nextQuestions() {
    if (_questionBank.length - 1 == _questionNumber) {
      _questionNumber = 0;
    } else {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].questions;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].answers;
  }

  int getLength() {
    return _questionBank.length;
  }
}
