import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/app_enums.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CarLabelInfo extends StatelessWidget {
  final String imagePath;
  final String title;
  final String value;
  final TypeView typeView;
  const CarLabelInfo(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.value,
      required this.typeView});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: typeView == TypeView.large
          ? MediaQuery.of(context).size.width / 3 - 20
          : null,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color:  AppColors.secondaryColor ,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagePath,
            width: typeView == TypeView.small ? 12 : 20.0,
            height: typeView == TypeView.small ? 12 : 20.0,
          ),
          CustomText(
            textString: title,
            textColor: AppColors.textColor,
            fontSize: typeView == TypeView.small ? 10 : 16.0,
          ),
          CustomText(
            textString: value,
            textColor: AppColors.textColor,
            fontSize: typeView == TypeView.small ? 11 : 18.0,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}


