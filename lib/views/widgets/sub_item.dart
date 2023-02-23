import 'package:car_task/core/app_enums.dart';
import 'package:car_task/core/assests_manager.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:car_task/views/home_screen/widgets/car_label_info.dart';
import 'package:flutter/material.dart';

class SubItemWidget extends StatelessWidget {
  const SubItemWidget(
      {super.key, required this.index, required this.listVieWGridViewType});
  final int index;
  final ListVieWGridViewType listVieWGridViewType;

  @override
  Widget build(BuildContext context) {
    double suitableWidth =
        ListVieWGridViewType.gridViewType == listVieWGridViewType
            ? MediaQuery.of(context).size.width / 2
            : 182;

    return SizedBox(
      child: Stack(
        children: [
          Container(
            height: ListVieWGridViewType.gridViewType == listVieWGridViewType
                ? MediaQuery.of(context).size.width / 2
                : 190.0,
            width: suitableWidth,
            color: Colors.white,
          ),
          Container(
            alignment: Alignment.topCenter,
            height: ListVieWGridViewType.gridViewType == listVieWGridViewType
                ? MediaQuery.of(context).size.width / 2 - 55
                : 180,
            width: suitableWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(index % 2 == 0
                    ? AppImageAssets.mainBMWCar
                    : AppImageAssets.mainGaballyCar),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 2.0),
            height: 30,
            width: suitableWidth,
            alignment: Alignment.topCenter,
            color: Colors.white.withOpacity(0.8),
            child:  CustomText(
                fontSize: suitableWidth*2 < 350 ? 12 : (suitableWidth*2 > 450 ? 18.0:14),
                textColor: Colors.black,
                textString: "جي ام سي | يوكن | الفئة الرابعة"),
          ),
          Positioned(
            bottom: 0.0,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                width: suitableWidth,
                height: 70,
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Expanded(
                      child: CarLabelInfo(
                        typeView: TypeView.small,
                        imagePath: AppIconsAssets.homeAd1,
                        title: "السعر",
                        value: "12,700",
                      ),
                    ),
                    SizedBox(width: 0.4,) , 
                    Expanded(
                      child: CarLabelInfo(
                        typeView: TypeView.small,
                        imagePath: AppIconsAssets.homeAd2,
                        title: "سنه الصنع",
                        value: "2019",
                      ),
                    ),
                                        SizedBox(width: 0.4,) , 
                    Expanded(
                      child: CarLabelInfo(
                        typeView: TypeView.small,
                        imagePath: AppIconsAssets.homeAd3,
                        title: "كم",
                        value: "20000",
                      ),
                    ),
                      SizedBox(width: 0.4,) , 
                    Expanded(
                      child: CarLabelInfo(
                        typeView: TypeView.small,
                        imagePath: AppIconsAssets.homeAd4,
                        title: "مكفولة ل",
                        value: "2021",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
