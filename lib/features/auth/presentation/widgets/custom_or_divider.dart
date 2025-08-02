import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/generated/l10n.dart';
import 'package:google_fonts/google_fonts.dart';

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
                style: GoogleFonts.cairo(
                  color:  Colors.black,
                  height: 4,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
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