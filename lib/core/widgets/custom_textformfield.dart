import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/utils/app_colors.dart';
import 'package:fruitopia/generated/l10n.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.obscureText = false,
    required this.hintText,
    required this.onSaved,
     this.textInputType=TextInputType.text,
  });
  final Widget? suffixIcon;
  final String hintText;
  final bool obscureText;
  final TextInputType textInputType ;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '${S.of(context).PleaseEnter} $hintText';
          }
          return null;
        },
        onSaved: onSaved,
        decoration: InputDecoration(
          filled: true,
          fillColor:  Color(0xFFF9FAFA),
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(4.r),
             borderSide: BorderSide(color:  const Color(0xFFE6E9E9), width: 1.w)
          ),
          focusedBorder:  OutlineInputBorder(
             borderRadius: BorderRadius.circular(4.r),
             borderSide: BorderSide(color:  AppColors.primaryColor, width: 1.w)
          ),
          errorBorder:  OutlineInputBorder(
             borderRadius: BorderRadius.circular(4.r),
             borderSide: BorderSide(color:  Colors.redAccent, width: 1.w)
          ),
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
