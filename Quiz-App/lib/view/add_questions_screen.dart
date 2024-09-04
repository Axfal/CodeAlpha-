// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/view/home_screen.dart';

import '../provider/add_question_provider.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({super.key});

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  final TextEditingController questionController = TextEditingController();
  final TextEditingController option1Controller = TextEditingController();
  final TextEditingController option2Controller = TextEditingController();
  final TextEditingController option3Controller = TextEditingController();
  final TextEditingController option4Controller = TextEditingController();
  List<dynamic> addQuestion = [];
  // for drop down button
  final List<String> _options = ['A', 'B', 'C', 'D'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    // final AddQuestionProvider provider = Provider.of<AddQuestionProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Add Your Questions',style: TextStyle(fontSize: 28,color: Colors.white),),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.173),
        child: Consumer<AddQuestionProvider>(
          builder: (context, value, child){
          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      controller: questionController,
                      maxLines: 2,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          hintText: 'Q: Write Your Question here..! ',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 2, color: Colors.blue)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 2, color: Colors.black))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextField(
                      controller: option1Controller,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: 'Option A',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.blue)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.black))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextField(
                      controller: option2Controller,
                      decoration: InputDecoration(
                          hintText: 'Option B',
                          hintStyle: TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.blue)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.black))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextField(
                      controller: option3Controller,
                      decoration: InputDecoration(
                          hintText: 'Option C',
                          hintStyle: TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.blue)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.black))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextField(
                      controller: option4Controller,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: 'Option D',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.blue)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.black))),
                    ),
                  ),
                  DropdownButton<String>(
                    style: TextStyle(color: Colors.black), // Text style of the selected item
                    underline: Container(
                      height: 2,
                      color: Colors.blue, // Color of the underline
                    ),
                    value: selectedValue,
                    hint: Text("Select a value"),
                    items: _options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blue// Text color
                        ),
                        onPressed: () {
                          if (questionController.text.isNotEmpty &&
                              option1Controller.text.isNotEmpty &&
                              option2Controller.text.isNotEmpty &&
                              option3Controller.text.isNotEmpty &&
                              option4Controller.text.isNotEmpty) {
                            addQuestion = [
                              questionController.text,
                              option1Controller.text,
                              option2Controller.text,
                              option3Controller.text,
                              option4Controller.text,
                              selectedValue
                            ];
                            value.addToList(addQuestion);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                            print(addQuestion);
                          } else {
                            print('error');
                          }
                        },
                        child: Text("Done")),
                  )
                ],
              ),
            ),
          );
        },)
      ),
    );
  }
}
