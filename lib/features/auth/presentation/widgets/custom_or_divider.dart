import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/generated/l10n.dart';

Widget customOrDivider(BuildContext context) {
  return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color:  Color(0xFFDCDEDE),
                  thickness: 1,
                  indent: 16.w,
                  endIndent: 16.w,
                ),
              ),
              Text(
                S.of(context).or,
                style: TextStyle(
                  color:  Colors.black,
                  height: 4,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cairo',
                ),
              ),
              Expanded(
                child: Divider(
                  color: const Color(0xFFDCDEDE),
                  thickness: 1,
                  indent: 16.w,
                  endIndent: 16.w,
                ),
              ),
            ],
          );
}