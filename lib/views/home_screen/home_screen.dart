import 'package:car_task/core/assests_manager.dart';
import 'package:car_task/models/main_category_model.dart';
import 'package:car_task/views/home_screen/widgets/custom_app_bar.dart';
import 'package:car_task/views/home_screen/widgets/main_category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //================= custom AppBar =================//
      appBar: CustomAppBar(
        menuOnpressed: () {},
        appBar: AppBar(),
        notificationOnPressed: () {},
      ),
      //================= custom AppBar =================//
      body: Column(
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
                  padding: const EdgeInsets.only(right: 11.0, left: 11.0),
                  child: MainCategoryWidget(
                    categoryName: mainCategoryModelList[index].categoryName,
                    imagePath: mainCategoryModelList[index].imagePath,
                  ),
                );
              },
            ),
           ),

           //--------------------- SizedBox -----------------//
          const SizedBox(height: 12.0),
        ],
      ),
    );
  }
}
