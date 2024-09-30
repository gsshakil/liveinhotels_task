import 'package:flutter/material.dart';
import 'package:liveinhotels_task/features/home/presentation/screens/app_landing_screen.dart';
import 'package:liveinhotels_task/features/home/presentation/screens/home_screen.dart';
import 'package:liveinhotels_task/core/route/route_not_found.dart';

class RouteNames {
  static const String appLandingScreen = 'appLandingScreen';
  static const String homeScreen = 'homeScreen';
}

class RouterClass {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.appLandingScreen:
        return MaterialPageRoute(builder: (_) => const AppLandingScreen());
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => RouteNotFound(title: settings.name ?? ''),
        );
    }
  }
}
