import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({Key? key, required this.color,this.cardWidget, this.onpress}) : super(key: key);
  final Color color;
  final Widget? cardWidget;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpress,
      child: Container(
       height: 200,
       margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:  color,
        ),
        child: cardWidget,
      ),
    );
  }
}
