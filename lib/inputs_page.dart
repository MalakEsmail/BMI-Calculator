import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }
//

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderSelected;
  int height = 180;

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
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xFF992314),
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
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
                  cardWidget('Female', FontAwesomeIcons.venus),
                  () {
                    setState(() {});
                  },
                ),
              ),
              Expanded(
                child: BoxWidget(
                  Color(0xFF1D1E33),
                  cardWidget('Female', FontAwesomeIcons.venus),
                  () {
                    setState(() {});
                  },
                ),
              )
            ],
          )),
          Container(
            color: Colors.pink,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            height: 80.0,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
//ctrl + alt + w : extract as widget
//ctrl + alt + m: extract as methodl

}
