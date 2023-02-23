import 'package:car_task/core/app_colors.dart';
import 'package:car_task/core/app_enums.dart';
import 'package:car_task/core/app_strings.dart';
import 'package:car_task/core/assests_manager.dart';

import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:car_task/models/descriped_car_model.dart';
import 'package:car_task/views/details_screen/widgets/connect_us_widget.dart';
import 'package:car_task/views/details_screen/widgets/descriped_car.dart';
import 'package:car_task/views/details_screen/widgets/guarantee_car_widget.dart';
import 'package:car_task/views/details_screen/widgets/header_details_widget.dart';
import 'package:car_task/views/details_screen/widgets/inf_detail_widget.dart';
import 'package:car_task/views/details_screen/widgets/owner_car_widget.dart';

import 'package:car_task/views/widgets/sub_item.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.heroTage});
  final String heroTage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // =================== HeaderDetailsWidget ============================//
              HeaderDetailsWidget(
                heroTag: heroTage,
              ),

              const SizedBox(height: 8.0),

              // =================== InfoDetailWidget ============================//

              const InfoDetailWidget(),

              // ===============================================//
              const SizedBox(height: 18.0),
              const GuaranteeCarWidget(
                imagePath: AppIconsAssets.carPageMakfula,
                title: 'مكفوله حتي 70000 كم',
              ),

              const SizedBox(height: 18.0),
              // ===============================================//
               const Padding(
                padding:  EdgeInsets.only(left: 12.0, right: 12.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: CustomText(
                    textString: AppStrings.carInfo,
                    textColor: AppColors.textColor,
                    fontSize: 16,
                  ),
                ),
              ),

              //============= DerscripedCar =====================//
              const SizedBox(
                height: 18.0,
              ),
              ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 1.5,
                  );
                },
                shrinkWrap: true,
                itemCount: descripedCarModelList.length,
                itemBuilder: (context, index) {
                  return DerscripedCar(
                    imagePath: descripedCarModelList[index].imagePath,
                    title: descripedCarModelList[index].title,
                    value: descripedCarModelList[index].value,
                  );
                },
              ),

            const   CustomText(
                  textString: '', textColor: AppColors.textColor, fontSize: 16),
              //========= ======= OwnerCarWidget ========================//
              const SizedBox(height: 10.0),
              const OwnerCarWidget(
                  imagePath: AppImageAssets.mainBMWCar,
                  title: "يكون للسيارات المعتمدة",
                  ownerName: "كل السيارات"),
              const SizedBox(
                height: 20.0,
              ),

              // ================= SubItemWidget =======================//
              SizedBox(
                height: 230,
                child: ListView.separated(
                  itemCount: 9,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 3),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: SubItemWidget(
                        listVieWGridViewType: ListVieWGridViewType.listViewType,
                        index: index,
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20.0),
              //============== ConnectUSWidget =====================//

              ConnectUSWidget(
                bookOnPressed: () {},
                callPressed: () {},
                chatByWHatsappPressed: () {},
                getLocationOnPressed: () {},
              ),

              //================ SizedBox ==================//
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
