// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PunctuationScreen extends StatelessWidget {
  const PunctuationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Punctuation',
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.097,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 15.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Period (.):  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Ends a statement.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"She is reading."',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
                    child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 10.0, top: 10.0),
                    child: RichText(
                        text: TextSpan(
                            text: 'Comma (,):  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(
                            text:
                                'Separates items in a list, clauses, or ideas within a sentence.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                          ),
                          TextSpan(
                            text: '"I bought apples, oranges, and bananas."',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ])),
                  ),
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.105,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Question Mark (?):  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Ends a question.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"Are you coming?"',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
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
                            text: 'Exclamation Point (!):  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(
                            text: 'Shows strong emotion or emphasis.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                          ),
                          TextSpan(
                            text: '"Watch out!"',
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
                            text: 'Colon (:):  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(
                            text: 'Introduces a list or explanation.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                          ),
                          TextSpan(
                            text:
                                '"He needs to buy the following: bread, milk, and eggs."',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ])),
                  ),
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.147,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
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
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.137,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Semicolon (;):  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Links closely related independent clauses.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: '"She likes tea; he prefers coffee."',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.111,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, bottom: 10.0, top: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: 'Quotation Marks (“ ”):  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Enclose direct speech or quotations.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nExample:  ',
                        ),
                        TextSpan(
                          text: "He said, 'Hello!'",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ])),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
