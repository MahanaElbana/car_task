
import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/assests_manager.dart';
import 'package:car_task/core/widgets/custom_button.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class ConnectUSWidget extends StatelessWidget {
  const ConnectUSWidget({
    Key? key,
    required this.bookOnPressed,
    required this.getLocationOnPressed,
    required this.chatByWHatsappPressed,
    required this.callPressed,
  }) : super(key: key);
  final VoidCallback bookOnPressed;
  final VoidCallback getLocationOnPressed;
  final VoidCallback chatByWHatsappPressed;
  final VoidCallback callPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // -------------------------- //
        CustomButton(
          borderColor: const Color(0xff585874),
          width: 120,
          textDirection: TextDirection.rtl,
          backgroundColor: Colors.white,
          height: 41.0,
          onPressed: bookOnPressed,
          customText: const CustomText(
            fontSize: 14.0,
            textColor: Color(0xff585874),
            textString: "احجز السيارة",
          ),
          child: SvgPicture.asset(
            AppIconsAssets.carPageBook,
            width: 18,
            height: 18,
          ),
        ),
        // -------------------------- //
        CustomButton(
          width: 120,
          textDirection: TextDirection.rtl,
          backgroundColor: const Color(0xff585874),
          height: 41.0,
          onPressed: getLocationOnPressed,
          customText: const CustomText(
            fontSize: 14.0,
            textColor: Colors.white,
            textString: "موقع السيارات",
          ),
          child: const Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 22.0,
          ),
        ),

        // -------------------------- //
        CustomButton(
          textDirection: TextDirection.rtl,
          backgroundColor: AppColors.secondaryColor,
          height: 41.0,
          width: 41.0,
          onPressed: chatByWHatsappPressed,
          child: SvgPicture.asset(
            AppIconsAssets.carPageChatByWHatsapp,
            width: 18,
            height: 18,
          ),
        ),
        // const SizedBox(width: 4.0),
        // -------------------------- //

        CustomButton(
          textDirection: TextDirection.rtl,
          backgroundColor: AppColors.secondaryColor,
          height: 41.0,
          width: 41.0,
          onPressed: callPressed,
          child: SvgPicture.asset(
            AppIconsAssets.carPageCall,
            width: 18,
            height: 18,
          ),
        ),
      ],
    );
  }
}
