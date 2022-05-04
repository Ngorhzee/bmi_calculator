import 'package:bmi_calculator/gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_bar.dart';
import 'calculator.dart';
import 'icon_child.dart';
import 'constants.dart';
import 'result.dart';
import 'values_widget.dart';

enum Gendero { male, female, me }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gendero? selectedCard;
  int height = 180;
  int weight = 60;
  int age = 18;
  late double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xff0A0E21),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(children: [
          Expanded(
            child: Gender(
              onpress: () {
                setState(() {
                  selectedCard = Gendero.male;
                });
              },
              color: selectedCard == Gendero.male ? kActive : inActive,
              cardWidget: const IconChild(
                icon: FontAwesomeIcons.mars,
                text: 'Male',
              ),
            ),
          ),
          Expanded(
            child: Gender(
              onpress: () {
                setState(() {
                  selectedCard = Gendero.female;
                });
              },
              color: selectedCard == Gendero.female ? kActive : inActive,
              cardWidget: const IconChild(
                icon: FontAwesomeIcons.venus,
                text: 'Female',
              ),
            ),
          ),
        ]),
        Expanded(
          child: Gender(
            color: kActive,
            cardWidget:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'kHeight',
                style: kLabelStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    height.toString(),
                    style: numberLabel,
                  ),
                  const Text(
                    'cm',
                    style: kLabelStyle,
                  ),
                ],
              ),
              SliderTheme(
                data: const SliderThemeData(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xff8D8E98),
                    thumbColor: Color(0xffEB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayColor: Color(0x29EB1555),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
                child: Slider(
                  value: height.toDouble(),
                  onChanged: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  },
                  min: 120.0,
                  max: 220.0,
                ),
              )
            ]),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Gender(
                color: kActive,
                cardWidget: ValuesWidget(
                  title: 'WEIGHT',
                  subTitle: weight.toString(),
                  onpress: () {
                    setState(() {
                      weight == 0 ? weight = 0 : weight -= 1;
                    });
                  },
                  onpress2: () {
                    setState(() {
                      weight += 1;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Gender(
                color: kActive,
                cardWidget: ValuesWidget(
                  title: 'AGE',
                  subTitle: age.toString(),
                  onpress: () {
                    setState(() {
                      age == 0 ? age = 0 : age -= 1;
                    });
                  },
                  onpress2: () {
                    setState(() {
                      age += 1;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        BottomBar(
          text: 'CALCULATE',
          onPress: () {
            BmiResult calc = BmiResult(height: height, weight: weight);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((BuildContext context) => Result(
                      bmiReport: calc.bmiresult(),
                      bmiResult: calc.calculate(),
                      bmiInterpretation: calc.interpretation(),
                    )),
              ),
            );
          },
        ),
      ]),
    );
  }
}
