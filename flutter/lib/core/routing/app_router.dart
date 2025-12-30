import 'package:flutter/material.dart';
import 'package:food_delivery/core/routing/routes.dart';
import 'package:food_delivery/features/login/login_screen.dart';
import 'package:food_delivery/features/onBoarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This argumnets it to be passed to
    final argments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        // Return login screen route here
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
