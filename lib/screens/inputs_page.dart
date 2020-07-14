import 'file:///F:/Flutter/flutter/BMI%20Calculator/lib/screens/results_page.dart';
import 'file:///F:/Flutter/flutter/BMI%20Calculator/lib/components/reusable_card.dart';
import 'file:///F:/Flutter/flutter/BMI%20Calculator/lib/components/round_iconButton.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../components/constants.dart';
import '../components/icon_content.dart';

enum Gender { male, female }
//

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderSelected;
  int height = 180;
  int weight = 60;
  int age = 20;

//  Color maleColor = inActiveColor;
//  Color femaleColor = inActiveColor;

//  void changeColor(Gender gender) {
//    gender == Gender.male?maleColor == inActiveColor?maleColor = activeColor:maleColor = inActiveColor:;
//    if (gender == Gender.male) {
//      if (maleColor == inActiveColor) {
//        maleColor = activeColor;
//        femaleColor = inActiveColor;
//      } else {
//        maleColor = inActiveColor;
//      }
//    }
//    if (gender == Gender.female) {
//      if (femaleColor == inActiveColor) {
//        femaleColor = activeColor;
//        maleColor = inActiveColor;
//      } else {
//        femaleColor = inActiveColor;
//      }
//    }
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: BoxWidget(
                  genderSelected == Gender.male ? kactiveColor : kInActiveColor,
                  cardWidget('Male', FontAwesomeIcons.mars),
                  () {
                    setState(() {
                      genderSelected = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: BoxWidget(
                  genderSelected == Gender.female
                      ? kactiveColor
                      : kInActiveColor,
                  cardWidget('Female', FontAwesomeIcons.venus),
                  () {
                    setState(() {
                      genderSelected = Gender.female;
                    });
                  },
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: BoxWidget(
                  Color(0xFF1D1E33),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: ktextLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: ktextLabelStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            thumbColor: Colors.pink,
                            overlayColor: Colors.lightBlueAccent,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0)),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          inactiveColor: Colors.grey,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  () {
                    // setState(() {});
                  },
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: BoxWidget(
                  Color(0xFF1D1E33),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: ktextLabelStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(FontAwesomeIcons.plus, () {
                            setState(() {
                              weight++;
                            });
                          }),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(FontAwesomeIcons.minus, () {
                            setState(() {
                              weight--;
                            });
                          }),
                        ],
                      )
                    ],
                  ),
                  () {
                    setState(() {});
                  },
                ),
              ),
              Expanded(
                child: BoxWidget(
                  Color(0xFF1D1E33),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: ktextLabelStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(FontAwesomeIcons.plus, () {
                            setState(() {
                              age++;
                            });
                          }),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(FontAwesomeIcons.minus, () {
                            setState(() {
                              age--;
                            });
                          }),
                        ],
                      )
                    ],
                  ),
                  () {
                    setState(() {});
                  },
                ),
              )
            ],
          )),
          BottomButton(() {
            CalculatorBrain calc = CalculatorBrain(height, weight);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ResultsPage(calc.calculateBMI(), calc.getResult())));
          }, 'Calculate')
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//      ),
    );
  }
//ctrl + alt + w : extract as widget
//ctrl + alt + m: extract as methodl

}
