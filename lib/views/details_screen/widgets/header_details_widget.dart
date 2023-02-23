import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/app_enums.dart';

import 'package:car_task/core/assests_manager.dart';
import 'package:car_task/core/widgets/custom_button.dart';
import 'package:car_task/views/home_screen/widgets/car_label_info.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class HeaderDetailsWidget extends StatelessWidget {
  const HeaderDetailsWidget({super.key, required this.heroTag});
  final String heroTag;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: SizedBox(
        child: Stack(
          children: [
            Container(
              height: 360.0,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(int.parse(heroTag) % 2 == 0
                      ? AppImageAssets.mainBMWCar
                      : AppImageAssets.mainGaballyCar),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                  top: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                        width: 40,
                        height: 40,
                        backgroundColor: AppColors.secondaryColor,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        textDirection: TextDirection.ltr,
                        child: SvgPicture.asset(
                          AppIconsAssets.back,
                          width: 14,
                          height: 14,
                        )),
                    Row(
                      children: [
                        CustomButton(
                            width: 40,
                            height: 40,
                            backgroundColor: AppColors.secondaryColor,
                            onPressed: () {},
                            textDirection: TextDirection.ltr,
                            child: SvgPicture.asset(
                              AppIconsAssets.carPageShare,
                              width: 18,
                              height: 18,
                            )),
                        const SizedBox(
                          width: 15.0,
                        ),
                        CustomButton(
                            width: 40,
                            height: 40,
                            backgroundColor: AppColors.secondaryColor,
                            onPressed: () {},
                            textDirection: TextDirection.ltr,
                            child: SvgPicture.asset(
                              AppIconsAssets.carPageFav,
                              width: 18,
                              height: 18,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CarLabelInfo(
                        typeView: TypeView.large,
                        imagePath: AppIconsAssets.carPageSlindr,
                        title: "المحرك/سلندر",
                        value: "6",
                      ),
                      CarLabelInfo(
                        typeView: TypeView.large,
                        imagePath: AppIconsAssets.homeAd2,
                        title: "سنه الصنع",
                        value: "2019",
                      ),
                      CarLabelInfo(
                        typeView: TypeView.large,
                        imagePath: AppIconsAssets.homeAd3,
                        title: "الممشي",
                        value: "2000",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
