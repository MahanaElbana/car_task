import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class GuaranteeCarWidget extends StatelessWidget {
  final String imagePath;

  final String title;
  const GuaranteeCarWidget({
    Key? key,
    required this.imagePath,
    required this.title,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0)
          ,color:  AppColors.guaranteeBackGroundColor,
        ),
        alignment: Alignment.center,
        height: 40.0,
        margin: const EdgeInsets.only(right: 10.0 , left: 10.0),
         padding: const EdgeInsets.only(right: 10.0 , left: 10.0),
        
        child: Row(
          
          
          children: [
             const  SizedBox(width: 6,) ,
              SvgPicture.asset(
                    imagePath,
                    width: 24.0,
                    height: 24.0,
                    color: Colors.white,
                  ),
               const   SizedBox(width: 20,) ,
            CustomText(
              textString: title,
              textColor: Colors.white,
              fontSize: 16.0,
            ) ,
           
          ],
        ),
      ),
    );
  }
}
