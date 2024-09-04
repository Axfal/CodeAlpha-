// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app/components/button.dart';
import 'package:quiz_app/view/QuestionView.dart';
import 'package:quiz_app/view/add_questions_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              width: 300,
              child: Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8k6Km-pk3rrGrbnw9Mj-uRIw0O8S7_Vaybw&s')),
            ),
            RoundButton(
                title: 'Click to Start',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuestionView()));
                }),
            RoundButton(
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
