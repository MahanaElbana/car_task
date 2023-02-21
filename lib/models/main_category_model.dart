import 'package:car_task/core/assests_manager.dart';

class MainCategoryModel {
  late final String categoryName;
  late final String imagePath;

  MainCategoryModel({
    required this.categoryName,
    required this.imagePath,
  });

  MainCategoryModel.fromJsonData({required Map jsonData}) {
    categoryName = jsonData['categoryName'];
    imagePath = jsonData['imagePath'];
  }

  Map toJsonData() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryName'] = categoryName;
    data['imagePath'] = imagePath;
    return data;
  }
}


 // =====================   ==========================//
List<MainCategoryModel> mainCategoryModelList = [
  MainCategoryModel(categoryName: "جبلي", imagePath: AppImageAssets.mainGaballyCar),
  MainCategoryModel(categoryName: "بي ام دبليو", imagePath:AppImageAssets.mainBMWCar),
  MainCategoryModel(categoryName: "تيوتا", imagePath: AppImageAssets.mainTayataCar),
  MainCategoryModel(categoryName: "جبلي", imagePath: AppImageAssets.mainGaballyCar),
  MainCategoryModel(categoryName: "جبلي", imagePath: AppImageAssets.mainGaballyCar),
  MainCategoryModel(categoryName: "بي ام دبليو", imagePath: AppImageAssets.mainBMWCar),
  MainCategoryModel(categoryName: "جبلي", imagePath: AppImageAssets.mainGaballyCar),
];
