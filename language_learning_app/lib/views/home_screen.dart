// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:language_learning_app/views/Basic%20Lesson.dart';
import 'package:language_learning_app/views/dictionary_screen.dart';
import 'package:language_learning_app/views/practice_exercise/exercise_hom_screen.dart';
import 'package:language_learning_app/views/stories.dart';
import 'package:provider/provider.dart';
import '../component/button.dart';
import '../provider/quote_provider.dart';
import 'grammar_view/grammar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    QuoteProvider provider = Provider.of<QuoteProvider>(context, listen: false);
    final sizeBox = MediaQuery.of(context).size.height * 0.02;
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Learning App',
            style: TextStyle(fontSize: 28, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<QuoteProvider>(builder: (context, value, child) {
                  return InkWell(
                    onTap: () {
                      provider.fetchQuote();
                    },
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      padding: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width * 0.911,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                          child: Text(
                        value.quote?.q ??
                            "Success is not final, failure is not fatal: It is the courage to continue that counts.",
                        style: Theme.of(context).textTheme.headlineMedium,
                      )),
                    ),
                  );
                }),
                ButtonToScreen(
                    title: 'Dictionary',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DictionaryScreen()));
                    }),
                SizedBox(
                  height: sizeBox,
                ),
                ButtonToScreen(
                    title: 'Basic Lesson',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ABC_SONG()));
                    }),
                SizedBox(
                  height: sizeBox,
                ),
                ButtonToScreen(
                    title: 'Story',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StoryScreen()));
                    }),
                SizedBox(
                  height: sizeBox,
                ),
                ButtonToScreen(
                    title: 'Grammar',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GrammarScreen()));
                    }),
                SizedBox(
                  height: sizeBox,
                ),
                ButtonToScreen(
                    title: 'Practice Exercise',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExerciseHomeScreen()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
