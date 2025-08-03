import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class CustomOTPTextField extends StatelessWidget {
  const CustomOTPTextField({
   required this.onCompleted,
    super.key,
  });
  final void Function(String)? onCompleted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.r),
      child: OTPTextField(
        outlineBorderRadius: 4,
        margin: EdgeInsets.symmetric(horizontal: 4),
        textFieldAlignment: MainAxisAlignment.center,
        length: 4,
        width: MediaQuery.of(context).size.width,
        fieldWidth: 60.w,
        style: TextStyle(fontSize: 17),
        otpFieldStyle: OtpFieldStyle(
          backgroundColor: Color(0xFFF9FAFA),
          borderColor: Color(0xFFE6E9E9),
        ),
        fieldStyle: FieldStyle.box,
        onCompleted:onCompleted,
      ),
    );
  }
}
