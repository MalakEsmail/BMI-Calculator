import 'file:///F:/Flutter/flutter/BMI%20Calculator/lib/components/constants.dart';
import 'file:///F:/Flutter/flutter/BMI%20Calculator/lib/components/icon_content.dart';
import 'file:///F:/Flutter/flutter/BMI%20Calculator/lib/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResults;
  final String bmiText;

  ResultsPage(this.bmiResults, this.bmiText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: BoxWidget(
                  kactiveColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        bmiResults,
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiText,
                        style: kBMITextStyle,
                      ),
                      Text(
                        '',
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      BottomButton(() {
                        Navigator.pop(context);
                      }, 'Re_Calculate'),
                    ],
                  ),
                  () {})),
        ],
      ),
    );
  }
}
