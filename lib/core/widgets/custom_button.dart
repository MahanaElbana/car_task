import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.width,
      required this.height,
      required this.backgroundColor,
      required this.onPressed,
      required this.textDirection,
   
      this.borderColor,
      this.customText, this.child});

  final double width;
  final double height;

  final Color backgroundColor;
  final Function onPressed;
  final TextDirection textDirection;
 
  final Color? borderColor;
  final CustomText? customText;
  final Widget? child; 
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection,
      child: GestureDetector(
        onTap: () => onPressed(),
        child: Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width / 2),
            color: backgroundColor,
            border: borderColor != null
                ? Border.all(color: borderColor!, width: 1.5)
                : null,
          ),
          height: height,
          // width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (child != null) child!,
              if (customText != null) customText!,
            ],
          ),
        ),
      ),
    );
  }
}
