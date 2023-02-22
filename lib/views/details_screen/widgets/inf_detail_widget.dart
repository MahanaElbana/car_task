import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';

class InfoDetailWidget extends StatelessWidget {
  const InfoDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const  CustomText(
              textString: "يوكن بحالة جيدة ",
              textColor: AppColors.textColor,
              fontSize: 22.0,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:const [
                  CustomText(
                    textString: "8,700",
                    textColor: AppColors.textColor,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                   SizedBox(width: 4.0),
                  CustomText(
                    textString: "د.ك",
                    textColor: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
