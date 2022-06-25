import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Icon is a widget in flutter?', true),
    Question('2 + 2 = 5 ', false),
    Question('we can an object of abstract class?', true),
  ];

  String getQuestion() {
    return _questionBank[_questionNumber].q;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].a;
  }

  void updateQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void restartQuiz()
  {
    _questionNumber = 0;
  }
}
