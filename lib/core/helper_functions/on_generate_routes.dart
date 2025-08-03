import 'package:flutter/material.dart';
import 'package:fruitopia/features/auth/presentation/views/forget_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/views/login_view.dart';
import 'package:fruitopia/features/auth/presentation/views/new_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/views/otp_view.dart';
import 'package:fruitopia/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/first_onboarding_view.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/onboarding_pageview.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/second_onboarding_view.dart';
import 'package:fruitopia/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case FirstOnboardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const FirstOnboardingView(),
      );
    case SecondOnboardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SecondOnboardingView(),
      );
    case OnboardingPageview.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnboardingPageview(),
      );
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
      case ForgetPassView.routeName:
      return MaterialPageRoute(builder: (context) => const ForgetPassView());
      case NewPassView.routeName:
      return MaterialPageRoute(builder: (context) => const NewPassView());
    case OtpView.routeName:
      return MaterialPageRoute(builder: (context) => const OtpView());
     default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
