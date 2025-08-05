import 'package:flutter/material.dart';
import 'package:fruitopia/core/utils/app_images.dart';
import 'package:fruitopia/features/on_boarding/presentation/widgets/custom_onboarding_body.dart';
import 'package:fruitopia/generated/l10n.dart';

class SecondOnboardingView extends StatelessWidget {
  const SecondOnboardingView({super.key});
  static const String routeName = '/Secondonboarding';

  @override
  Widget build(BuildContext context) {
    return CustomOnboardingBody(
        isOnboarding1: false,
        title: S.of(context).onboardingTitle2,
        subtitle: S.of(context).onboardingSubtitle2,
        backgroundColor: Color(0xffB0E8C7),
        image: Assets.imagesPineappleOnboarding,
      );
  }
}
