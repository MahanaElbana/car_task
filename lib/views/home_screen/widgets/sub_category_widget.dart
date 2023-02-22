import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';

class SubCategoryWidget extends StatelessWidget {
  const SubCategoryWidget({super.key, required this.itemName});
  final String itemName;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        alignment: Alignment.center,
        height: 40.0,
        width: 130.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.subCategoryBackGroundColor,
        ),
        child: CustomText(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            textColor: Colors.white,
            textString: itemName),
      ),
    );
  }
}
