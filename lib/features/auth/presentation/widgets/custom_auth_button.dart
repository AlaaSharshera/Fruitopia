import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, required this.buttonText, required this.buttonImage});
  final String buttonText;
  final String buttonImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w ,vertical: 6.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: const Color(0xFFE6E9E9), width: 1.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(width: 20.w),
        Image.asset(buttonImage),
        Spacer(),
        Text(buttonText,style:TextStyle(
          color: const Color(0xFF0C0D0D) ,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Cairo',
        )),
       SizedBox(width: MediaQuery.of(context).size.width * 0.25),
      ],)
    );
  }
}