import 'package:car_task/core/app_enums.dart';
import 'package:car_task/core/app_route.dart';
import 'package:car_task/core/app_strings.dart';
import 'package:car_task/core/assests_manager.dart';
import 'package:car_task/core/widgets/default_text_field.dart';
import 'package:car_task/models/main_category_model.dart';
import 'package:car_task/views/details_screen/details_screen.dart';
import 'package:car_task/views/home_screen/widgets/custom_app_bar.dart';
import 'package:car_task/views/home_screen/widgets/header_footer.dart';
import 'package:car_task/views/home_screen/widgets/main_category.dart';
import 'package:car_task/views/home_screen/widgets/sub_category_widget.dart';
import 'package:car_task/views/widgets/sub_item.dart';
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
      //=================  body    =================//
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--------------------- SizedBox -----------------//
            const SizedBox(height: 20.0),
            //================= main Categories =================//
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

            //======= Header Image (check your vehicle) =================//
            const HeaderFooterWidget(imagePath: AppImageAssets.headerImage),
            const SizedBox(height: 18.0),

            // =============== Search Bar =================//
            Directionality(
              textDirection: TextDirection.rtl,
              child: DefaultTextFieldInfoWidget(
                prefixImageIcon: AppIconsAssets.homeSearch,
                hintText: AppStrings.searchAboutYourCar,
                controller: TextEditingController(),
              ),
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
                    return SubCategoryWidget(itemName: subCategories[index]);
                  },
                ),
              ),
            ),

            //--------------------- SizedBox -----------------//
            const SizedBox(height: 18.0),

            // ===================== sub Items =======================//
            Container(
              padding: const EdgeInsets.only(right: 2, left: 2),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //     maxCrossAxisExtent: screenWidth > 400 ? 250 : 200,
                //     crossAxisSpacing: 2,
                //     mainAxisExtent: screenWidth > 400 ? 270 : 230,
                //     mainAxisSpacing: 8),
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 1.5
                ),
                itemCount: subCategories.length * 2,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.detailsScreen,
                          arguments: DetailsScreen(heroTage: "$index"));
                    },
                    child: Hero(
                      transitionOnUserGestures: true,
                      tag: "$index",
                      child: Material(
                        type: MaterialType.transparency,
                        child: SubItemWidget(
                          listVieWGridViewType: ListVieWGridViewType.gridViewType,
                          index: index,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            //====================================================================//

            //--------------------- SizedBox -----------------//
            const SizedBox(height: 18.0),

            // ===================== Footer image (BMWGENIUS) =====================//
            const HeaderFooterWidget(imagePath: AppImageAssets.footerImage),
            //--------------------- SizedBox -----------------//
          ],
        ),
      ),
    );
  }
}

List<String> subCategories = <String>["أمريكي", "أوروبي", "أسيوي"];
