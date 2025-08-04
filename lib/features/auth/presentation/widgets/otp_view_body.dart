import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/features/auth/presentation/views/new_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_otp_textfield.dart';
import 'package:fruitopia/generated/l10n.dart';

class OTPViewBody extends StatelessWidget {
  const OTPViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.r),
            child: Text(
              S.of(context).verifyCodeSubtitle,
              style: TextStyle(
                color: const Color(0xFF616A6B),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Cairo',
              ),
            ),
          ),
          CustomOTPTextField( onCompleted: (pin) {
       
      },),
          Padding(
            padding: EdgeInsets.fromLTRB(16.r, 16.r, 16.r, 0),
            child: CustomButton(text: S.of(context).verifyButton,onPressed:() {
              Navigator.pushReplacementNamed(context, NewPassView.routeName);
            },),
          ),
          TextButton(
            onPressed: (){},
            child: Text(
              S.of(context).resendCode,
              style: TextStyle(
                color: const Color(0xFF2D9F5D),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Cairo',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

