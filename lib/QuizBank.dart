// ignore: file_names
import 'Questions.dart';

class QuizBrain {
  // ignore: non_constant_identifier_names
  //ecan
  int _QuestionNumber = 0;
  //
  final List<Questions> _questionBank = [
    Questions('Question # 1\nLahore is biggest city of Pakistan.', false),
    Questions('Question # 2\nEven number modulus by 2 is always 0.', true),
    Questions(
        'Question # 3\nAustralia is a country as well as a continent.', true),
    Questions('Question # 4\nThe national flag of America has 51 stars.', true),
    Questions('Question # 5\nThe human body consists of 150 bones.', false),
    Questions('Question # 6\nMolecule is the smallest unit of matter.', false),
    Questions('Question # 7\nCrocodiles shed tears when they eat food.', true),
    Questions('Question # 8\nSharks are mammals.', false),
    Questions(
        'Question # 9\nAsia is the largest continent in the world. ', true),
    Questions('Question # 10\nOmnivores eat only plants.', false),
  ];

  //ignore:
  void nextQuestions() {
    if (_QuestionNumber < _questionBank.length - 1) {
      _QuestionNumber++;
    }
  }

  // ignore: non_constant_identifier_names
  String GetQuestions() {
    return _questionBank[_QuestionNumber].QuestionString;
  }

  // ignore: non_constant_identifier_names
  bool CorrectAnswer() {
    return _questionBank[_QuestionNumber].AnswerText;
  }

  bool isFinished() {
    if (_QuestionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _QuestionNumber = 0;
  }
}
