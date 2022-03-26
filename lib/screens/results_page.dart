import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.result,
      @required this.bmi,
      @required this.interpretation});

  final String result;
  final String bmi;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculation'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              backgroundColor: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    textAlign: TextAlign.center,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          Expanded(
              child: BottomButton(
            label: 'RE-CALCULATE',
            onPress: () => Navigator.pop(context),
          ))
        ],
      ),
    );
  }
}
