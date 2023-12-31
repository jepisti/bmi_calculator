import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.idealWeight,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String idealWeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Your result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kCardColorCode,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ideal weight:   ',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                      Text(
                        idealWeight,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                      const Text(
                        ' kg ',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
