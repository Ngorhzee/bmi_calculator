
import 'package:flutter/material.dart';

import 'constants.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key, required this.onPress, required this.text,
  }) : super(key: key);
  final VoidCallback onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: onPress,
    child:Container(
      child: Center(
        child:  Text(
          text,
          style: kCalStyle,
        ),
      ),
      height: kHeight,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      color: const Color(0xffEB1555),
    ));
  }
}