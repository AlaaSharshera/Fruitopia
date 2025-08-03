import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/core/widgets/custom_textformfield.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_have_account_row.dart';
import 'package:fruitopia/features/auth/presentation/widgets/terms_conditions_widget.dart';
import 'package:fruitopia/generated/l10n.dart';


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
          TermsAndConditionsWidget(),
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

