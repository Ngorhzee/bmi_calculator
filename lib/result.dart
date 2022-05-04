import 'package:bmi_calculator/bottom_bar.dart';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(
      {Key? key,
      required this.bmiReport,
      required this.bmiResult,
      required this.bmiInterpretation})
      : super(key: key);
  final String bmiReport;
  final String bmiResult;
  final String bmiInterpretation;

  InputPage inputPage = const InputPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALULATOR'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Text(
          'Your Result',
          style: kTitleStyle,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: inActive,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiReport,
                      style: kOutputStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kResultStyle,
                    ),
                    Text(
                      bmiInterpretation,
                      style: kLabelStyle,
                    ),
                  ]),
            ),
          ),
        ),
        BottomBar(
            onPress: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE')
      ]),
    );
  }
}
