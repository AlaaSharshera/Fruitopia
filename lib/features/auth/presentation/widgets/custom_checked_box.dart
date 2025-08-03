import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitopia/core/utils/app_colors.dart';
import 'package:fruitopia/core/utils/app_images.dart';

class CustomCheckedBox extends StatelessWidget {
  const CustomCheckedBox({super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(duration: Duration(milliseconds:100 ),
       width: 24.w,
       height: 20.h,
       padding: EdgeInsets.all(2.r),
       margin: EdgeInsets.symmetric(horizontal: 8.w),
       decoration: BoxDecoration(
      color: isChecked?AppColors.primaryColor:Colors.transparent,
      borderRadius: BorderRadius.circular(8.r),
      border: Border.all(
        color: isChecked?Colors.transparent:const Color(0xFFDCDEDE),
        width: 1.w
      ),
        ),
        child: isChecked?SvgPicture.asset(Assets.iconsCheck):SizedBox(),
      ),
    );
  }
}