import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.updateColor});

  final Color colour;
  final Widget cardChild;
  final Function updateColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: updateColor,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
