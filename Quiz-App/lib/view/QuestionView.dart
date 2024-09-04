// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/view/result_screen.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  int correctAnswerCounter = 0;
  int currentIndex = 0;
  int? selectedIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Check if there are no questions and navigate to result screen immediately.
    if (questions.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              correctAnswer: correctAnswerCounter,
              totalQuestions: questions.length,
            ),
          ),
        );
      });
    }
  }

  void nextIndex() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        // in this if condition questions.length is equal to 5 shows the total length
        if (currentIndex < questions.length - 1) {
          currentIndex++;
          selectedIndex =
              null; // Resetting the selectedIndex for the next question
        } else if (questions.isEmpty) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        correctAnswer: correctAnswerCounter,
                        totalQuestions: questions.length,
                      )));
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        correctAnswer: correctAnswerCounter,
                        totalQuestions: questions.length,
                      )));
        }
      });
    });
  }

  void selectOption(int index) {
    setState(() {
      selectedIndex = index;
      if (index == questions[currentIndex].correctAnswer) {
        correctAnswerCounter++;
        // print(correctAnswerCounter);
      }
    });
    nextIndex();
  }

  @override
  Widget build(BuildContext context) {
    final ques = questions[currentIndex];
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                ques.question,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 50),
              Options(
                options: ques.option,
                correctAnswer: ques.correctAnswer,
                selectedIndex: selectedIndex,
                onPress: selectOption,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final int correctAnswer;
  final List<String> options;
  final int? selectedIndex;
  final Function(int) onPress;

  const Options({
    super.key,
    required this.options,
    required this.onPress,
    required this.correctAnswer,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => onPress(index),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    options[index],
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                  trailing: selectedIndex == index
                      ? correctAnswer == index
                          ? Icon(Icons.check_circle, color: Colors.green)
                          : Icon(Icons.close_outlined, color: Colors.red)
                      : null,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
