import 'dart:ui';

import 'package:BMIcalculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusble_card.dart';
import 'bottom_button.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,@required this.resultText,@required this.explanation});
  final String bmiResult;
  final String resultText;
  final String explanation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Reusblecard(
                colur: activecolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextstyle,
                    ),
                    Text(
                      bmiResult,
                      style: numresultstyle,
                    ),
                    Text(
                      explanation,
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          BottomButton(
              onTap: () => Navigator.pop(context), bottomText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
