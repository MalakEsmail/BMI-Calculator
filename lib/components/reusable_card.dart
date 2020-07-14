// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';

class BoxWidget extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  BoxWidget(this.colour, this.cardChild, this.onPress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
