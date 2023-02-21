import 'package:flutter/material.dart';


InputDecoration customInputDecoration(
    {required Color colorIcon,
    required IconData prefixIconData,
    String? hintTextString ,IconData ? suffixIconData }) {
  return InputDecoration(
    hintText: hintTextString,
    filled: true,
    fillColor: Colors.grey.shade100,
    hintStyle: const TextStyle(color: Colors.grey),
    //================= enabledBorder ========================//
    // enabledBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(5.0),
    //   borderSide: BorderSide(color: AppColors.secondaryColor, width: 1.0),
    // ),
    // //================= focusedBorder ========================//
    // focusedBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(5.0),
    //   borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
    // ),
    //================= prefixIcon ========================//
    prefixIcon: Icon(
      prefixIconData,
      color: colorIcon,
    ),
    suffixIcon: Icon(
      suffixIconData,
      color: colorIcon,
    ),
    //================= end ========================//
  );
}
