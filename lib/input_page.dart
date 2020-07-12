import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: BoxWidget(Color(0xFF1D1E33),
                        cardWidget('Male', FontAwesomeIcons.mars)),
                  ),
                  Expanded(
                    child: BoxWidget(Color(0xFF1D1E33),
                        cardWidget('Female', FontAwesomeIcons.venus)),
                  )
                ],
              )),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: BoxWidget(Color(0xFF1D1E33),
                        cardWidget('Female', FontAwesomeIcons.venus)),
                  )
                ],
              )),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: BoxWidget(Color(0xFF1D1E33),
                        cardWidget('Female', FontAwesomeIcons.venus)),
                  ),
                  Expanded(
                    child: BoxWidget(Color(0xFF1D1E33),
                        cardWidget('Female', FontAwesomeIcons.venus)),
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
