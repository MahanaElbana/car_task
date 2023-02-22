import 'package:car_task/core/assests_manager.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:car_task/views/home_screen/widgets/car_label_info.dart';
import 'package:flutter/material.dart';

class SubItemWidget extends StatelessWidget {
  const SubItemWidget({super.key, required this.index});
   final  int index ; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // height: 180,
      child: Stack(
        // textDirection: TextDirection.rtl,
        children: [
          Container(
           // height: 190.0,
           height: MediaQuery.of(context).size.width/2,
           width: MediaQuery.of(context).size.width/2,
            color: Colors.white,
           //  width: 179,
          ),
          Container(
            alignment: Alignment.topCenter,
            // height: 150,
            // width: 179,
            height: MediaQuery.of(context).size.width/2,
            width: MediaQuery.of(context).size.width/2,
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: AssetImage(index%2 ==0 ? AppImageAssets.mainBMWCar : AppImageAssets.mainGaballyCar),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 2.0),
            // width: 179,
             height: 30,
          //  height: MediaQuery.of(context).size.width/2,
             width: MediaQuery.of(context).size.width/2,
            alignment: Alignment.topCenter,
            color: Colors.white.withOpacity(0.8),
            child: const CustomText(
                fontSize: 14,
                textColor: Colors.black,
                textString: "جي ام سي | يوكن | الفئة الرابعة"),
          ),
          Positioned(
            bottom: 0.0,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
              
            // height: MediaQuery.of(context).size.width/2,
            width: MediaQuery.of(context).size.width/2, 
            height: 70,        
              alignment: Alignment.centerLeft,
              //  width:179,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: CarLabelInfo(
                        typeView: TypeView.small,
                        imagePath: AppIconsAssets.homeAd1,
                        title: "السعر",
                        value: "12,700",
                      ),
                    ),
                    Expanded(
                      child: CarLabelInfo(
                        typeView: TypeView.small,
                        imagePath: AppIconsAssets.homeAd2,
                        title: "سنه الصنع",
                        value: "2019",
                      ),
                    ),
                    Expanded(
                      child: CarLabelInfo(
                        typeView: TypeView.small,
                        imagePath: AppIconsAssets.homeAd3,
                        title: "كم",
                        value: "20000",
                      ),
                    ),
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
