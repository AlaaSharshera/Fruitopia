import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/core/widgets/custom_textformfield.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_have_account_row.dart';
import 'package:fruitopia/generated/l10n.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.r),
            child: CustomTextFormField(hintText: S.of(context).fullName),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: CustomTextFormField(hintText: S.of(context).email,textInputType: TextInputType.emailAddress,),
          ),
          CustomTextFormField(
            hintText: S.of(context).password,
            obscureText: true,
            suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
          ),
          Padding(
            padding:  EdgeInsets.all(8.h),
            child: Row(
              children: [
                Checkbox(
                  value: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  side: BorderSide(
                    color: const Color(0xFFDCDEDE),
                    width: 1.w,
                  ),
                  onChanged: (value) {},
                  activeColor: const Color(0xFF2D9F5D),
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: S.of(context).termsOfService,
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF949D9E),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: S.of(context).acceptTerms,
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF2D9F5D),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                              ),
                ),]
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.r),
            child: CustomButton(text: S.of(context).registerButtonText,onPressed:() {
              
            },),
          ),
          CustomHaveAccountRow(
            text: S.of(context).registerAlreadyHaveAccount,
            actionText: S.of(context).login,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
