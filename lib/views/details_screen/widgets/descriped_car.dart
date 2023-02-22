import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DerscripedCar extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? value;
  final bool? status;
  const DerscripedCar(
      {Key? key,
      required this.imagePath,
      required this.title,
      this.value,
      this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        alignment: Alignment.bottomRight,
        margin: const EdgeInsets.only(right: 24.0),
        color: AppColors.secondaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 6.0,
                  ),
                  SvgPicture.asset(
                    imagePath,
                    width: 14.0,
                    height: 14.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomText(
                    textString: title,
                    textColor: AppColors.textColor,
                    fontSize: 16.0,
                  )
                ],
              ),
            ),
            value == null
                ? Expanded(
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: const Icon(Icons.task_alt_rounded)))
                : Expanded(
                    child: CustomText(
                      textString: value!,
                      textColor: AppColors.textColor,
                      fontSize: 16.0,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
