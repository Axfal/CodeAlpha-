// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PartOfSpeech extends StatelessWidget {
  const PartOfSpeech({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Part of Speech',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.125,
              width: MediaQuery.of(context).size.width * 0.911,
              child: Card(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Nouns:  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text:
                              'Words that name people, places, things, or ideas.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"cat," "city," "happiness"',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.125,
              width: MediaQuery.of(context).size.width * 0.911,
              child: Card(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Pronouns:  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Words that take the place of nouns.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"he," "they," "which"',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.125,
              width: MediaQuery.of(context).size.width * 0.911,
              child: Card(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Verbs:  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text:
                              'Words that express actions, events, or states of being.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"run," "is," "think"',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.125,
              width: MediaQuery.of(context).size.width * 0.911,
              child: Card(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Adjectives:  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Words that describe or modify nouns.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"red," "tall," "beautiful"',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.157,
              width: MediaQuery.of(context).size.width * 0.911,
              child: Card(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Adverbs:  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text:
                              'Words that modify verbs, adjectives, or other adverbs, often indicating how, when, where, or to what extent.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"quickly," "very," "yesterday"',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.157,
              width: MediaQuery.of(context).size.width * 0.911,
              child: Card(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Prepositions:  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text:
                              'Words that show the relationship between a noun (or pronoun) and other words in a sentence.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"on," "at," "by"',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
