// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:language_learning_app/provider/add_question_provider.dart';
import 'package:language_learning_app/provider/dictionary_provider.dart';
import 'package:language_learning_app/provider/quote_provider.dart';
import 'package:language_learning_app/views/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuoteProvider()),
        ChangeNotifierProvider(create: (_) => DictionaryProvider()),
        ChangeNotifierProvider(create: (_) => AddQuestionProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              headlineMedium: TextStyle(fontSize: 22, color: Colors.white),
              headlineSmall: TextStyle(fontSize: 16, color: Colors.white)),
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.blue, textTheme: ButtonTextTheme.primary),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
