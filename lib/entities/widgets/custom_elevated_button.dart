import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class CustomElevatedButton extends StatelessWidget {
  final double height;
  final double width;
  final Color textColor;
  final Color backgroundColor;
  final Color foregroundColor;
  final double textSize;
  final String fontFamily;
  final String buttonString;
  final FontWeight fontWeight;
  final void Function() onPressed;


   const CustomElevatedButton({
    this.height = 50,
    this.width = 300,
    this.textSize = 15,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = 'Poppins',
    this.textColor = Paletts.snow,
    this.backgroundColor = Paletts.erieBlack,
    this.foregroundColor = Paletts.snow,
    required this.buttonString,
    required this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
        ),
        child: Text(buttonString,style: TextStyle(
          color: textColor,
          fontFamily: fontFamily,
          fontSize: textSize,
          fontWeight: fontWeight
        ),)));
  }
}