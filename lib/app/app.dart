import 'package:car_task/core/app_route.dart';
import 'package:car_task/core/widgets/app_scroll_behavior_widget.dart';
import 'package:flutter/material.dart';

class CarTaskApp extends StatefulWidget {
  const CarTaskApp._internal();
  static const CarTaskApp _instance = CarTaskApp._internal();
  factory CarTaskApp() {
    return _instance;
  }
  @override
  State<CarTaskApp> createState() => _CarTaskAppState();
}

class _CarTaskAppState extends State<CarTaskApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouteGenerator.getRoute,
      initialRoute: AppRoutes.homeScreenRoutes,
    );
  }
}
