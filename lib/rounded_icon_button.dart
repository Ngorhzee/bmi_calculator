import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({ Key? key, required this.onpress, required this.icon }) : super(key: key);
  final VoidCallback onpress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(minHeight: 56,minWidth: 56),
      onPressed: onpress,
      child: Icon(icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor:const Color(0xff4C4F5E),
    );
  }
}