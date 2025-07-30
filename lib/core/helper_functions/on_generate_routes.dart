import 'package:flutter/material.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:fruitopia/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}


