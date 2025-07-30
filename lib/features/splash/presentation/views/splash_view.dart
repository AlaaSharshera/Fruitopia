import 'package:flutter/material.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/onboarding_pageview.dart';
import 'package:fruitopia/features/splash/presentation/widgets/splash_view_body.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = '/splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}


class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
   implementNavigation();
    super.initState();
  }
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
    body: SplashViewBody()
    );
  }
  
 void implementNavigation() {
  Future.delayed(Duration(seconds: 3), () {
    if (!mounted) return; 
    Navigator.pushReplacementNamed(context, OnboardingPageview.routeName);
  });
}

}
