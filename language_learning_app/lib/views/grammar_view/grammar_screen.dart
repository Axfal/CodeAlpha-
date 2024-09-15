// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:language_learning_app/component/button.dart';
import 'package:language_learning_app/views/grammar_view/part_of_speech.dart';
import 'package:language_learning_app/views/grammar_view/punctuation_screen.dart';
import 'package:language_learning_app/views/grammar_view/tense_screen.dart';

class GrammarScreen extends StatelessWidget {
  const GrammarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grammar',
            style: TextStyle(fontSize: 28, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonToScreen(
                title: 'Parts of Speech',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PartOfSpeech()));
                }),
            ButtonToScreen(
                title: 'Tenses',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TenseScreen()));
                }),
            ButtonToScreen(
                title: 'Punctuation',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PunctuationScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
