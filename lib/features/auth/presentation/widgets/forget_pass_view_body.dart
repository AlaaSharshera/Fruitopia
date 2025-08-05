import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/core/widgets/custom_textformfield.dart';
import 'package:fruitopia/features/auth/presentation/views/otp_view.dart';
import 'package:fruitopia/generated/l10n.dart';

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
              style: TextStyle(
                color: const Color(0xFF616A6B),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Cairo',
              ),
            ),
          ),
          CustomTextFormField(hintText: "",textInputType: TextInputType.phone,onSaved: (value){},),
          Padding(
            padding: EdgeInsets.all(16.h),
            child: CustomButton(text: S.of(context).forgotPasswordButton,onPressed: (){
              Navigator.pushNamed(context, OtpView.routeName);
            },),
          ),
        ],
      ),
    );
  }
}
