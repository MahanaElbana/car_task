import 'package:car_task/core/assests_manager.dart';

class DescripedCarModel {
  late final String imagePath;
  late final String title;
  final String ? value;
  final bool? status; 
  DescripedCarModel( {
    required this.imagePath,
    required this.title,
  this.status, this.value,
  
  });
}

// =====================   ==========================//
List<DescripedCarModel> descripedCarModelList = [
  DescripedCarModel(
      title: "اللون الخارجي",
      value: "ابيض",
      imagePath: AppIconsAssets.carPageSlindr),
  DescripedCarModel(
      title: "اللون الدخلي",
      value: "بيج",
      imagePath: AppIconsAssets.carPageSlindr),
  DescripedCarModel(
      title: "نوع المقعد",
      value: "مخمل",
      imagePath: AppIconsAssets.carPageSlindr),
  DescripedCarModel(
      title: "فتحه سقف",
      status: true,
       imagePath: AppIconsAssets.carPageSlindr),
  DescripedCarModel(
      title: "كاميرا خلفية",
     status: true,
      imagePath: AppIconsAssets.carPageSlindr),
  DescripedCarModel(
      title: "سينسر",
      value: "امامي -خلفي",
      imagePath: AppIconsAssets.carPageSlindr),
  DescripedCarModel(
      title: "ناقل الحركه",
      value: "اتوماتيك",
      imagePath: AppIconsAssets.carPageSlindr),
];
