import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;

  BottomButton(this.onTap, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kLargeTextStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 10.0),
        color: bottomContainerColor,
        height: bottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
