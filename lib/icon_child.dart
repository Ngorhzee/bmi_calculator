import 'package:flutter/material.dart';
import 'constants.dart';
class IconChild extends StatelessWidget {
  const IconChild({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
         Text(
          text,
          style:kLabelStyle,
        )
      ],
    );
  }
}