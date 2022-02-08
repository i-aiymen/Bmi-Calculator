import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.interpreation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpreation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: TitleTextStyle,
              ),
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: activeCardColour,
                  onPress: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: resultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: BMITextStyle,
                      ),
                      Text(
                        interpreation,
                        textAlign: TextAlign.center,
                        style: BodyTextStyle,
                      ),
                    ],
                  ),
                )),
            BottomButton(
              buttonTitle: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}
