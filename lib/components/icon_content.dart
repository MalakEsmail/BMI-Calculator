import 'package:flutter/cupertino.dart';

class cardWidget extends StatelessWidget {
  final String textOption;
  final IconData iconName;

  cardWidget(this.textOption, this.iconName);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textOption,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
