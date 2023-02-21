import 'package:car_task/core/widgets/custom_input_decoration.dart';
import 'package:flutter/material.dart';


class DefaultTextFieldInfoWidget extends StatelessWidget {
  final IconData prefixIconData;
  final IconData? suffixIconData;
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final double? width; 
  // final IconData ?
  const DefaultTextFieldInfoWidget(
      {super.key,
      required this.prefixIconData,
      required this.hintText,
      required this.controller,
      this.onChanged,
      this.suffixIconData ,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 10.0, bottom: 10.0, left: 14.0, right: 14.0),
      width: width?? MediaQuery.of(context).size.width,
      child: TextField(
        onChanged: onChanged,
        decoration: customInputDecoration(
           //  colorIcon: AppColors.secondaryColor,
           colorIcon: Colors.red,
            prefixIconData: prefixIconData,
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
