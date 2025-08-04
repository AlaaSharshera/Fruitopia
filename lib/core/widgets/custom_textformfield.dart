import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.obscureText = false,
    required this.hintText,
     this.textInputType=TextInputType.text,
  });
  final Widget? suffixIcon;
  final String hintText;
  final bool obscureText;
  final TextInputType textInputType ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Color(0xFFF9FAFA),
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: const Color(0xFFE6E9E9), width: 1.w),
      ),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 14.h,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: const Color(0xFF949D9E),
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'Cairo',
          ),
        ),
      ),
    );
  }
}
