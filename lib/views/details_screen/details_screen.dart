import 'package:car_task/core/app_route.dart';
import 'package:car_task/core/assests_manager.dart';
import 'package:car_task/core/widgets/custom_button.dart';
import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:car_task/views/details_screen/descriped_car.dart';
import 'package:car_task/views/details_screen/guarantee_car_widget.dart';
import 'package:car_task/views/details_screen/owner_car_widget.dart';
import 'package:car_task/views/home_screen/widgets/car_label_info.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //==================================//
              Container(
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
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImageAssets.mainBMWCar),
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
                                icon: const Icon(Icons.arrow_forward),
                                width: 40,
                                height: 40,
                                backgroundColor: Colors.blueGrey.shade100,
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.homeScreenRoutes);
                                },
                                textDirection: TextDirection.ltr),
                            Row(
                              children: [
                                CustomButton(
                                    icon: const Icon(Icons.favorite_border),
                                    width: 40,
                                    height: 40,
                                    backgroundColor: Colors.blueGrey.shade100,
                                    onPressed: () {},
                                    textDirection: TextDirection.ltr),
                                SizedBox(
                                  width: 15.0,
                                ),
                                CustomButton(
                                    icon: Icon(Icons.share),
                                    width: 40,
                                    height: 40,
                                    backgroundColor: Colors.blueGrey.shade100,
                                    onPressed: () {},
                                    textDirection: TextDirection.ltr),
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
              //================================== //
              const SizedBox(
                height: 8.0,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        textString: "يوكن بحالة جيدة ",
                        textColor: Colors.black,
                        fontSize: 22.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            CustomText(
                              textString: "8,700",
                              textColor: Colors.black,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            CustomText(
                              textString: "د.ك",
                              textColor: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // ===============================================//
              const SizedBox(
                height: 18.0,
              ),
              const GuaranteeCarWidget(
                imagePath: AppIconsAssets.homeAd4,
                title: 'مكفوله حتي 70000 كم',
              ),
              //============= DerscripedCar =====================//
              const SizedBox(
                height: 18.0,
              ),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 1.5,
                  );
                },
                shrinkWrap: true,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return const DerscripedCar(
                    imagePath: AppIconsAssets.homeAd4,
                    title: "اللون الخارجي",
                    value: "ابيض",
                  );
                },
              ),

              //==================================//
              const CustomText(
                  textString: '', textColor: Colors.black, fontSize: 16),
              //========= ======= OwnerCarWidget ========================//
              const SizedBox(
                height: 10.0,
              ),
              const OwnerCarWidget(
                  imagePath: AppImageAssets.mainBMWCar,
                  title: "يكون للسيارات المعتمدة",
                  ownerName: "كل السيارات"),
              const SizedBox(
                height: 20.0,
              ),

              // ==============================================//
              Container(
                          height: 180,
                child: ListView.separated(itemCount: 9,
                separatorBuilder: (context, index) => SizedBox(width: 3,),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.detailsScreen);
                        },
                        child: Container(
                          height: 180,
                          child: Stack(
                            // textDirection: TextDirection.rtl,
                            children: [
                              Container(
                                height: 150.0,
                                color: Colors.white,
                                width: 178,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 150,
                                width: 178,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppImageAssets.mainBMWCar),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 2.0),
                                width: 178,
                                height: 30,
                                alignment: Alignment.topCenter,
                                color: Colors.white.withOpacity(0.8),
                                child: const CustomText(
                                    fontSize: 14,
                                    textColor: Colors.black,
                                    textString:
                                        "جي ام سي | يوكن | الفئة الرابعة"),
                              ),
                              Positioned(
                                bottom: 0.0,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 178,
                                    child: Row(
                                  
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        CarLabelInfo(
                                           typeView: TypeView.small,
                                          imagePath: AppIconsAssets.homeAd1,
                                          title: "السعر",
                                          value: "12,700",
                                        ),
                                        CarLabelInfo(
                                           typeView: TypeView.small,
                                          imagePath: AppIconsAssets.homeAd2,
                                          title: "سنه الصنع",
                                          value: "2019",
                                        ),
                                        CarLabelInfo(
                                           typeView: TypeView.small,
                                          imagePath: AppIconsAssets.homeAd3,
                                          title: "كم",
                                          value: "20000",
                                        ),
                                        CarLabelInfo(
                                           typeView: TypeView.small,
                                          imagePath: AppIconsAssets.homeAd4,
                                          title: "مكفولة ل",
                                          value: "2021",
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
                  },
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),
              //===================== =====================//

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // -------------------------- //
                  // const SizedBox(width: 4.0),
                  CustomButton(
                    width: 120,
                    icon: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 22.0,
                    ),
                    textDirection: TextDirection.rtl,
                    backgroundColor: const Color(0xff585874),
                    height: 41.0,
                    onPressed: () {},
                    customText: const CustomText(
                        fontSize: 14.0,
                        textColor: Colors.white,
                        textString: "موقع السيارات"),
                  ),
                  // const SizedBox(width: 4.0),
                  // -------------------------- //
                  CustomButton(
                      borderColor: const Color(0xff585874),
                      width: 120,
                      icon: const Icon(
                        Icons.table_restaurant_outlined,
                        color: Color(0xff585874),
                        size: 22.0,
                      ),
                      textDirection: TextDirection.rtl,
                      backgroundColor: Colors.white,
                      height: 41.0,
                      onPressed: () {},
                      customText: const CustomText(
                          fontSize: 14.0,
                          textColor: Color(0xff585874),
                          textString: "احجز السيارة")),
                  //const SizedBox(width: 4.0),
                  // -------------------------- //
                  CustomButton(
                    icon: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    textDirection: TextDirection.rtl,
                    backgroundColor: const Color(0xff585874).withOpacity(0.2),
                    height: 41.0,
                    width: 41.0,
                    onPressed: () {},
                  ),
                  // const SizedBox(width: 4.0),
                  // -------------------------- //

                  CustomButton(
                    icon: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    textDirection: TextDirection.rtl,
                    backgroundColor: const Color(0xff585874).withOpacity(0.2),
                    height: 41.0,
                    width: 41.0,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
