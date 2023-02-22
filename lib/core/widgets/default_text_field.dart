import 'package:car_task/core/widgets/custom_input_decoration.dart';
import 'package:flutter/material.dart';


class DefaultTextFieldInfoWidget extends StatelessWidget {
  final String prefixImageIcon;

  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final double? width; 
 
  const DefaultTextFieldInfoWidget(
      {super.key,
      required this.prefixImageIcon,
      required this.hintText,
      required this.controller,
      this.onChanged,
     
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 10.0, bottom: 10.0, left: 14.0, right: 14.0),
      width: width?? MediaQuery.of(context).size.width,
      child: TextField(
        textAlign: TextAlign.center, 
        onChanged: onChanged,
        decoration: customInputDecoration(
           colorIcon: const Color(0xff585874) ,
            prefixImageIcon: prefixImageIcon,
            hintTextString: hintText),
        controller: controller,
        cursorColor: const Color(0xff1d3557),
        cursorRadius: const Radius.circular(1.5),
        showCursor: true,
        autocorrect: true,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
