// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import '../views/practice_exercise/add_question_screen.dart';

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
      question: "1. Which word is a noun?",
      option: ["A) Quickly", "B) Happy", "C) Walk", "D) Apple"],
      correctAnswer: 3),
  Questions(
      question: "2. Which sentence is in the past tense?",
      option: [
        "A) She eats breakfast",
        "B) She will eat breakfast",
        "C)  She ate breakfast",
        "D) She is eating breakfast"
      ],
      correctAnswer: 2),
  Questions(
      question: "3. Which is a proper noun?",
      option: ["A) teacher", "B) London", "C) river", "D) cat"],
      correctAnswer: 1),
  Questions(
      question: "4. Which word is an adjective?",
      option: ["A) Sing", "B) Quickly", "C) Tall", "D) Dog"],
      correctAnswer: 2),
  Questions(
      question: "5. Choose the correct verb form: 'He ___ every day.'",
      option: ["A) run", "B) runs", "C) running", "D) ran"],
      correctAnswer: 1),
];
