// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import '../view/add_questions_screen.dart';

class Questions extends AddQuestion {
  final String question;
  final List<String> option;
  final int correctAnswer;

  Questions(
      {required this.question,
      required this.option,
      required this.correctAnswer});
}

List<Questions> questions = [
  Questions(
      question: "1. What will 'evenOrOdd(3)' return?",
      option: ["A) Even", "B) Odd", "C) Error", "D) None of the above"],
      correctAnswer: 1),
  Questions(
      question: "2. What will 'factorial(4)' return?",
      option: ["A) 12", "B) 16", "C) 24", "D) 20"],
      correctAnswer: 2),
  Questions(
      question: "3. What will 'isPalindrome('racecar')' return?",
      option: ["A) true", "B) false", "C) Error", "D) None of the above"],
      correctAnswer: 0),
  Questions(
      question: "4. What will 'fibonacci(5)' return?",
      option: ["A) 3", "B) 5", "C) 8", "D) 13"],
      correctAnswer: 1),
  Questions(
      question: "5. What will 'isPrime(7)' return?",
      option: ["A) true", "B) false", "C) Error", "D) None of the above"],
      correctAnswer: 0),
];
