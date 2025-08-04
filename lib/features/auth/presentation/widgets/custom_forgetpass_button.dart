import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/constants.dart';
import 'package:fruitopia/core/services/shared_prefrences_singleton.dart';
import 'package:fruitopia/generated/l10n.dart';


Widget customForgetPassButton(BuildContext context, {required VoidCallback onPressed}) {
  return  Container(
            alignment: Prefs.getString(kAppLanguage)=='ar' ? Alignment.centerLeft : Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                S.of(context).forgetPassword,
                style: TextStyle(
                  color: const Color(0xFF2D9F5D),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
          );
}