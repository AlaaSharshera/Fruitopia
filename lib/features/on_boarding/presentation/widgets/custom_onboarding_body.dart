import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitopia/core/utils/app_colors.dart';
import 'package:fruitopia/core/cubits/app_language_cubit/app_language_cubit.dart';
import 'package:fruitopia/core/utils/app_images.dart';
import 'package:fruitopia/generated/l10n.dart';

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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                Assets.imagesBackgroundOnboarding,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                color: backgroundColor,
              ),
            ),

            isOnboarding1
                ? Positioned(
                  top: 50.h,
                  right: 20.w,
                  child: TextButton(
                    onPressed: () {
                      BlocProvider.of<AppLanguageCubit>(
                        context,
                      ).changeLanguage();
                    },
                    child: Text(
                      S.of(context).appLanguage,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                        fontFamily: 'CairoPlay',
                      ),
                    ),
                  ),
                )
                : SizedBox(),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SvgPicture.asset(image, height: 200.h),
            ),
          ],
        ),
        
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            fontFamily: 'CairoPlay',
          ),
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
              height: 1.5.h,
              letterSpacing: 0.5.sp,
              fontFamily: 'Cairo',
            ),
          ),
        ),
      ],
    );
  }
}
