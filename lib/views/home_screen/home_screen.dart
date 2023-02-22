import 'package:car_task/core/app_route.dart';
import 'package:car_task/core/app_strings.dart';
import 'package:car_task/core/assests_manager.dart';

import 'package:car_task/core/widgets/custom_text_widet.dart';
import 'package:car_task/core/widgets/default_text_field.dart';
import 'package:car_task/models/main_category_model.dart';
import 'package:car_task/views/home_screen/widgets/car_label_info.dart';
import 'package:car_task/views/home_screen/widgets/custom_app_bar.dart';
import 'package:car_task/views/home_screen/widgets/header_footer.dart';
import 'package:car_task/views/home_screen/widgets/main_category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return Scaffold(
      //================= custom AppBar =================//
      appBar: CustomAppBar(
        menuOnpressed: () {},
        appBar: AppBar(),
        notificationOnPressed: () {},
      ),
      //================= custom AppBar =================//
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--------------------- SizedBox -----------------//
            const SizedBox(height: 20.0),
            //--------------------- main Categories ------------------//
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: mainCategoryModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: MainCategoryWidget(
                      categoryName: mainCategoryModelList[index].categoryName,
                      imagePath: mainCategoryModelList[index].imagePath,
                    ),
                  );
                },
              ),
            ),

            //--------------------- SizedBox -----------------//
            const SizedBox(height: 18.0),
            const HeaderFooterWidget(imagePath: AppImageAssets.headerImage),
            const SizedBox(height: 18.0),
            // =============== Search Bar =================//
            Directionality(
              textDirection: TextDirection.rtl,
              child: DefaultTextFieldInfoWidget(
                  prefixImageIcon: AppIconsAssets.homeSearch,
                  hintText: AppStrings.searchAboutYourCar,
                  controller: TextEditingController()),
            ),
            const SizedBox(height: 18.0),
            // ==================== Sub Categories ======================//

            Container(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  subCategories.length,
                  (index) {
                    return Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                        alignment: Alignment.center,
                        height: 40.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xff373749),
                        ),
                        child: CustomText(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            textColor: Colors.white,
                            textString: subCategories[index]),
                      ),
                    );
                  },
                ),
              ),
            ),

            // ===================== sub Items =======================//

            const SizedBox(height: 18.0),

            ////////////////////////////////
            Container(
              padding: const EdgeInsets.only(right: 2,left: 2),
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 8),
                  itemCount: subCategories.length*2,
                  itemBuilder: (BuildContext ctx, index) {
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
                              width: MediaQuery.of(context).size.width / 2,
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              height: 150,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImageAssets.mainBMWCar),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 2.0),
                              width: MediaQuery.of(context).size.width / 2,
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
                                  width: MediaQuery.of(context).size.width / 2,
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
                  }),
            ),

            // =================================================//
            const SizedBox(height: 18.0),

            const HeaderFooterWidget(imagePath: AppImageAssets.footerImage),
            //--------------------- SizedBox -----------------//
          ],
        ),
      ),
    );
  }
}

List<String> subCategories = <String>["أمريكي", "أوروبي", "أسيوي"];
