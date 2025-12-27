import 'package:flutter/material.dart';
import 'package:food_delivery/core/routing/routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This argumnets it to be passed to
    final argments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const SizedBox());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
