import 'package:bmi_calculator/rounded_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class ValuesWidget extends StatelessWidget {
  const ValuesWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.onpress,
     
      required this.onpress2,
      })
      : super(key: key);
  final String title;
  final String subTitle;
  final VoidCallback onpress;
  final VoidCallback onpress2;
 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: kLabelStyle,
        ),
        Text(
          subTitle,
          style: numberLabel,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconButton(onpress: onpress, icon: FontAwesomeIcons.minus),
            const SizedBox(
              width: 10,
            ),
            RoundedIconButton(onpress: onpress2, icon: FontAwesomeIcons.plus),
          ],
        )
      ],
    );
  }
}
