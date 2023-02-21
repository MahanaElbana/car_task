import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.width,
      required this.height,
      required this.textString,
      required this.backgroundColor,
      required this.onPressed});

  final double width;
  final double height;
  final String textString;
  final Color backgroundColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: backgroundColor,
      ),
      height: height,
      width: width,
      // child: TextButton(
      //   onPressed: () => onPressed(),
      //   // child: CustomText(
      //   //   fontSize: 18,
      //   //   textColor: Colors.white,
      //   //   textString: textString,
      //   // ),
      // ),
    );
  }
}