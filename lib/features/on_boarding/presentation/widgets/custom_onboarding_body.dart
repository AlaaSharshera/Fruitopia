import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitopia/constants.dart';
import 'package:fruitopia/core/cubits/app_language_cubit/app_language_cubit.dart';
import 'package:fruitopia/core/utils/app_images.dart';
import 'package:fruitopia/generated/l10n.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOnboardingBody extends StatelessWidget {
  const CustomOnboardingBody({
    required this.title,
    required this.backgroundColor,
    required this.image,
    required this.subtitle,
    required this.isOnboarding1,
    super.key,
  });
  final Color backgroundColor;
  final String image;
  final String title;
  final String subtitle;
  final bool isOnboarding1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              Assets.imagesBackgroundOnboarding,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.53,
              color: backgroundColor,
            ),
          isOnboarding1?  Positioned(
              top: 50.h,
              right: 20.w,
              child: TextButton(
                onPressed: () {
                  BlocProvider.of<AppLanguageCubit>(context).changeLanguage();
                },
                child: Text(
                  S.of(context).appLanguage,
                  style: GoogleFonts.cairoPlay(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ):SizedBox(),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SvgPicture.asset(image, height: 230.h),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Text(
          title,
          style: GoogleFonts.cairoPlay(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              height: 1.5.h,
              letterSpacing: 0.5.sp,
            ),
          ),
        ),
      ],
    );
  }
}
