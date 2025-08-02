import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/constants.dart';
import 'package:fruitopia/core/services/shared_prefrences_singleton.dart';
import 'package:fruitopia/features/auth/presentation/views/login_view.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/first_onboarding_view.dart';
import 'package:fruitopia/features/on_boarding/presentation/views/second_onboarding_view.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/features/on_boarding/presentation/widgets/custom_page_indicator.dart';
import 'package:fruitopia/generated/l10n.dart';

class OnboardingPageview extends StatefulWidget {
  const OnboardingPageview({super.key});
  static const String routeName = '/onboardingPageview';

  @override
  State<OnboardingPageview> createState() => _OnboardingPageviewState();
}

class _OnboardingPageviewState extends State<OnboardingPageview> {
  late PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
                log("page index $pageIndex", name: pageIndex.toString());
              });
            },
            children: const [FirstOnboardingView(), SecondOnboardingView()],
          ),
        ),
        SizedBox(height: 20.h),
        CustomPageIndicator(
          pageIndex: pageIndex,
          pageController: pageController,
        ),

        Visibility(
          visible: pageIndex == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.all(24.r),
            child: CustomButton(
              text: S.of(context).onboardingButtonText,
              onPressed: () {
                Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.pushReplacementNamed(context, LoginView.routeName);
              },
            ),
          ),
        ),
      ],
    ),);
  }
}
