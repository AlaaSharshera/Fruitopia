import 'package:flutter/material.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/first_onboarding_view.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/second_onboarding_view.dart';

class OnboardingPageview extends StatelessWidget {
  const OnboardingPageview({super.key});
static const String routeName = '/onboardingPageview';
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        FirstOnboardingView(),
        SecondOnboardingView(),
      ],
    );
  }
}