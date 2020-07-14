import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTab;
  final String title;

  BottomButton(this.onTab, this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonStyle,
          ),
        ),
        color: Colors.pink,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        height: 80.0,
      ),
    );
  }
}
