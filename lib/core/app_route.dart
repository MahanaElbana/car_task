import 'package:car_task/core/app_strings.dart';
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
        return MaterialPageRoute(
          builder: (_) {
            final args = settings.arguments as DetailsScreen;
            return DetailsScreen(
              heroTage: args.heroTage,
            );
          },
        );

      default:
        return unDefinedRoute();
    }
  }

  //== to handel route ==//
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}
