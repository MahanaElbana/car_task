import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final double fontSize;
  final FontWeight ? fontWeight;
  final Color textColor;
  final String textString;
  const CustomText(
      {super.key,
      required this.textString,
      required this.textColor,
      required this.fontSize,
       this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      textString,
      style: TextStyle(
        color: textColor,
       fontWeight: fontWeight,
        fontSize: fontSize,
       // fontFamily: AppFontFamily.fontFamily,
      ),
    );
  }
}
