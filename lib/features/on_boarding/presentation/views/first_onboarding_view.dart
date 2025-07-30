import 'package:flutter/material.dart';
import 'package:fruitopia/core/utils/app_images.dart';
import 'package:fruitopia/features/on_boarding/presentation/widgets/custom_onboarding_body.dart';
import 'package:fruitopia/generated/l10n.dart';

class FirstOnboardingView extends StatelessWidget {
  const FirstOnboardingView({super.key});
  static const String routeName = '/firstonboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomOnboardingBody(
        isOnboarding1: true,
        title: S.of(context).onboardingTitle1,
        subtitle: S.of(context).onboardingSubtitle1,
        backgroundColor: Color(0xffFADA9E).withOpacity(0.45),
        image: Assets.imagesOnboardingFruitBasket,
      ),
    );
  }
}
