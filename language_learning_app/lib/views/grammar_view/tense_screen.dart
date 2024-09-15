// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TenseScreen extends StatelessWidget {
  const TenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tenses',
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
                height: MediaQuery.of(context).size.height * 0.37,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
                    child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 10.0, top: 10.0),
                    child: RichText(
                        text: TextSpan(
                            text: 'Present Tense  \n',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(
                            text: 'Simple Present: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for habitual actions, general truths, and states.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'She reads books every day.\n',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          // ---------------------------------
                          TextSpan(
                            text: '\nPresent Continuous: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for habitual actions, general truths, and states.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'She reads books every day.\n',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          // ---------------------------------
                          TextSpan(
                            text: '\nSimple Present: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for habitual actions, general truths, and states.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'She reads books every day.',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ])),
                  ),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.59,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
                    child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 10.0, top: 10.0),
                    child: RichText(
                        text: TextSpan(
                            text: 'Past Tense  \n',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(
                            text: 'Simple Past: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for actions that were completed in the past.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'She read a book yesterday.\n',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          // ---------------------------------
                          TextSpan(
                            text: '\nPast Continuous: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for actions that were happening at a specific moment in the past.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'She was reading a book when I called her.\n',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          // ---------------------------------
                          TextSpan(
                            text: '\nPast Perfect: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for actions that were completed before another action in the past.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'She had read the book before the movie was released.\n',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          //-----------------------------------
                          TextSpan(
                            text: '\nPast Perfect Continuous: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for actions that were ongoing in the past up until another past action.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'She had been reading for two hours before the power went out.',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ])),
                  ),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.59,
                width: MediaQuery.of(context).size.width * 0.911,
                child: Card(
                    child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 20.0, top: 10.0),
                    child: RichText(
                        text: TextSpan(
                            text: 'Future Tense  \n',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(
                            text: 'Simple Future: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for actions that will happen in the future.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'She will read the book tomorrow.\n',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          // ---------------------------------
                          TextSpan(
                            text: '\nFuture Continuous: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for actions that will be happening at a specific time in the future.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'She will be reading the book at 8 PM.\n',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          // ---------------------------------
                          TextSpan(
                            text: '\nFuture Perfect: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for actions that will be completed before a specific future time.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'She will have read the book by the end of the week.\n',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          //-----------------------------------
                          TextSpan(
                            text: '\nFuture Perfect Continuous: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Used for actions that will be ongoing up to a specific point in the future, with an emphasis on the duration.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nExample:  ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'She will have been reading for three hours by the time you arrive.',
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
      ),
    );
  }
}
