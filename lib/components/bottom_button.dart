import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onTap});
  final String buttonTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: LargeButtonTextStyle,
        )),
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
