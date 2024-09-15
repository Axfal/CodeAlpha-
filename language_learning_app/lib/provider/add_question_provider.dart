import 'package:flutter/cupertino.dart';
import '../model/QuestionModel.dart';

class AddQuestionProvider with ChangeNotifier {
  List<dynamic> _list = [];
  List<dynamic> get list => _list;

  addToList(List value) {
    _list = value;  // Assign the value to _list correctly
    int correctAnswer;

    // Ensure that the correct answer is at _list[5]
    switch (_list[5]) {
      case 'A':
        correctAnswer = 0;
        break;
      case 'B':
        correctAnswer = 1;
        break;
      case 'C':
        correctAnswer = 2;
        break;
      case 'D':
        correctAnswer = 3;  // Correct D to 3 (since D is the 4th option)
        break;
      default:
        correctAnswer = -1;  // Handle default case, if no valid answer is selected
    }

    List<Questions> quest = [
      Questions(
          question: "Q: ${_list[0]}",
          option: [
            "A) ${_list[1]}",
            "B) ${_list[2]}",
            "C) ${_list[3]}",
            "D) ${_list[4]}"
          ],
          correctAnswer: correctAnswer
      )
    ];

    // Assign the questions properly
    questions = quest.map((ques) => ques).toList();
    notifyListeners();
  }
}
