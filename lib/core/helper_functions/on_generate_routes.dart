import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/core/services/get_it_service.dart';
import 'package:fruitopia/features/auth/domain/repos/auth_repo.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruitopia/features/auth/presentation/views/forget_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/views/signin_view.dart';
import 'package:fruitopia/features/auth/presentation/views/new_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/views/otp_view.dart';
import 'package:fruitopia/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruitopia/features/bottom_nav_bar/presentation/widgets/bottom_nav_bar.dart' ;
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
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => 
      BlocProvider<SigninCubit>(create: (context) => SigninCubit(getIt<AuthRepo>()), child: const SigninView()));
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
      case ForgetPassView.routeName:
      return MaterialPageRoute(builder: (context) => const ForgetPassView());
      case NewPassView.routeName:
      return MaterialPageRoute(builder: (context) => const NewPassView());
    case OtpView.routeName:
      return MaterialPageRoute(builder: (context) => const OtpView());
      case CustomBottomNavBar.routeName:
      return MaterialPageRoute(builder: (context) => const CustomBottomNavBar());
     default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
