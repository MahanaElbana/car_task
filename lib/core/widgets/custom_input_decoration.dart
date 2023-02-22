import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

InputDecoration customInputDecoration(
    {required Color colorIcon,
    required String prefixImageIcon,
    String? hintTextString}) {
  return InputDecoration(
    hintText: hintTextString,
    filled: true,
    fillColor: Colors.white,
    hintStyle: const TextStyle(
        color: const Color(0xff585874),
        fontSize: 17.0,
        fontWeight: FontWeight.bold),

    //================= enabledBorder ========================//
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(color: const Color(0xff585874), width: 1.0),
    ),
    // //================= focusedBorder ========================//
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(color: const Color(0xff585874), width: 1.5),
    ),
    //================= prefixIcon ========================//
    prefixIcon: Container(
      padding: const EdgeInsets.all(7),
      child: SvgPicture.asset(

        prefixImageIcon,
        color: colorIcon,
        width: 11.0,
        height: 11.0,
        
      ),
    ),

    //================= end ========================//
  );
}
