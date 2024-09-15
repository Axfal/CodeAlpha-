// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:language_learning_app/views/home_screen.dart';
import 'package:language_learning_app/views/practice_exercise/question_screen.dart';

import '../../component/button.dart';
import 'add_question_screen.dart';

class ExerciseHomeScreen extends StatefulWidget {
  const ExerciseHomeScreen({super.key});

  @override
  State<ExerciseHomeScreen> createState() => _ExerciseHomeScreenState();
}

class _ExerciseHomeScreenState extends State<ExerciseHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },
            icon: Icon(
              Icons.keyboard_backspace_sharp,
              color: Colors.white,
            )),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonToScreen(
                buttonHeight: 45.0,
                buttonWidth: 200.0,
                title: 'Click to Start',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuestionView()));
                }),
            ButtonToScreen(
                buttonHeight: 45.0,
                buttonWidth: 200.0,
                title: 'Add Questions',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddQuestion()));
                }),
          ],
        ),
      ),
    );
  }
}
