// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../home_screen.dart';

class ResultScreen extends StatefulWidget {
  final int correctAnswer;
  final int totalQuestions;
  const ResultScreen(
      {super.key, required this.correctAnswer, required this.totalQuestions});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late int wrongAnswers;
  late int skipQuestions;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    wrongAnswers = widget.totalQuestions - widget.correctAnswer;
    skipQuestions =
        widget.totalQuestions - (widget.correctAnswer + wrongAnswers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Result',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PieChart(
              chartValuesOptions: ChartValuesOptions(
                showChartValuesInPercentage: true,
                // chartValueStyle:
                // TextStyle(fontSize: 16, color: Colors.white)
              ),
              dataMap: {
                'Correct Answers': widget.correctAnswer.toDouble(),
                'Wrong Answers': wrongAnswers.toDouble(),
                'Skip Questions': skipQuestions.toDouble()
              },
              colorList: [Colors.green, Colors.red, Colors.yellow],
              animationDuration: Duration(milliseconds: 1500),
              chartRadius: MediaQuery.of(context).size.height / 4.5,
              chartType: ChartType.ring,
              ringStrokeWidth: 20,
              legendOptions: LegendOptions(legendPosition: LegendPosition.left),
            ),
            SizedBox(height: 50),
            Text(
                widget.correctAnswer >= (widget.totalQuestions / 2)
                    ? "Congratulation!"
                    : "Better luck next time",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                backgroundColor: Colors.blue,
                child: Icon(Icons.refresh, color: Colors.white, size: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
