import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_cont.dart';
import 'reusble_card.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'calculate_brain.dart';

enum Gender { femail, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int hight = 180;
  int weight = 70;
  int age = 30;
  // Color malecardcolor = inactivecolor;
  // Color femailcardcolor = inactivecolor;
  // void updateColor(Gender selectedGender) {
  //   if (selectedGender==Gender.male) {
  //     if (malecardcolor == inactivecolor) {
  //       malecardcolor = activecolor;
  //       femailcardcolor = inactivecolor;
  //     } else {
  //       malecardcolor = inactivecolor;
  //     }
  //   }
  //   if (selectedGender==Gender.femail) {
  //     if (femailcardcolor == inactivecolor) {
  //       femailcardcolor = activecolor;
  //       malecardcolor = inactivecolor;
  //     } else {
  //       femailcardcolor = inactivecolor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calcolator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusblecard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colur: selectedGender == Gender.male
                        ? activecolor
                        : inactivecolor,
                    cardchild: IconCont(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Reusblecard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.femail;
                      });
                    },
                    colur: selectedGender == Gender.femail
                        ? activecolor
                        : inactivecolor,
                    cardchild: IconCont(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusblecard(
              colur: activecolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HIGHT",
                    style: labelTextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(hight.toString(), style: numTextstyle),
                      Text(
                        "cm",
                        style: labelTextstyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: hight.toDouble(),
                      min: 100.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValuo) {
                        setState(() {
                          hight = newValuo.round();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusblecard(
                    colur: activecolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: labelTextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              heroTag: '1',
                              backgroundColor: Color(0xFF4C4F5E),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(FontAwesomeIcons.plus),
                            ),
                            FloatingActionButton(
                              heroTag: '2',
                              backgroundColor: Color(0xFF4C4F5E),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(FontAwesomeIcons.minus),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusblecard(
                    colur: activecolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: labelTextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: numTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              heroTag: '3',
                              backgroundColor: Color(0xFF4C4F5E),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(FontAwesomeIcons.plus),
                            ),
                            FloatingActionButton(
                              heroTag: '4',
                              backgroundColor: Color(0xFF4C4F5E),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(FontAwesomeIcons.minus),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
              bottomText: 'CALCULATE',
              onTap: () {
                CalculateBrain calc =
                    CalculateBrain(height: hight, weight: weight);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResultsPage(
                      bmiResult: calc.calclateBMI(),
                      resultText: calc.getresulate(),
                      explanation: calc.getExplanation(),
                    )));
              }
              //onTap
              ),
        ],
      ),
    );
  }
}
