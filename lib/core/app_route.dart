import 'package:car_task/views/details_screen/details_screen.dart';
import 'package:car_task/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String homeScreenRoutes = "/";
  static const String detailsScreen = "/detailsScreen";
}

class AppRouteGenerator {
  //====  manage route ======//
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreenRoutes:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.detailsScreen:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());

      default:
        return unDefinedRoute();
    }
  }

  //== to handel route ==//
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("No Route Found"),
        ),
        body: const Center(child: Text("No Route Found")),
      ),
    );
  }
}
