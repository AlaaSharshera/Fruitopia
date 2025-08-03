import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/core/widgets/custom_textformfield.dart';
import 'package:fruitopia/generated/l10n.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassViewBody extends StatelessWidget {
  const ForgetPassViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(16.r),
            child: Text(
              S.of(context).forgotPasswordSubtitle,
              style: GoogleFonts.cairo(
                color: const Color(0xFF616A6B),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          CustomTextFormField(hintText: ""),
          Padding(
            padding: EdgeInsets.all(16.h),
            child: CustomButton(text: S.of(context).forgotPasswordButton),
          ),
        ],
      ),
    );
  }
}
