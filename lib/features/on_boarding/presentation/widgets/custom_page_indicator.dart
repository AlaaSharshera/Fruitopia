import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({required this.pageController,required this.pageIndex,super.key});
   final PageController pageController;
    final int pageIndex ;

  @override
  Widget build(BuildContext context) {
    return    SmoothPageIndicator(    
   controller: pageController,    
   count:  2,    
   axisDirection: Axis.horizontal,    
   effect:  ColorTransitionEffect(    
      spacing:  6.w,    
      radius:  4.r,    
      dotWidth:  8.w,    
      dotHeight:  8.h,    
      paintStyle:  PaintingStyle.fill,      
      dotColor:  pageIndex==1?AppColors.primaryColor:Color(0xff5DB957).withOpacity(0.5),    
      activeDotColor:  AppColors.primaryColor    
  ), 
);
  }
}