import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/utils/app_images.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/core/widgets/custom_textformfield.dart';
import 'package:fruitopia/features/auth/presentation/views/forget_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_forgetpass_button.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_have_account_row.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_or_divider.dart';
import 'package:fruitopia/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.r),
            child: CustomTextFormField(hintText: S.of(context).email,textInputType: TextInputType.emailAddress,onSaved: (value){},),
          ),

          CustomTextFormField(
            hintText: S.of(context).password,
            obscureText: true,
            onSaved: (value){},
            suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
          ),
          customForgetPassButton(context, onPressed: () {
            Navigator.pushNamed(context, ForgetPassView.routeName);
          }),
          Padding(
            padding: EdgeInsets.all(16.r),
            child: CustomButton(text: S.of(context).login,
              onPressed: () {
              
              },
          ),),
          CustomHaveAccountRow(
            text: S.of(context).DontHaveAccount,
            actionText: S.of(context).registerButtonText,
            onTap: () {
              Navigator.pushNamed(context, SignUpView.routeName);
            },
          ),
          customOrDivider(context),
          CustomAuthButton(
            buttonImage: Assets.imagesGoogle,
            buttonText: S.of(context).googleSign,
          ),
          CustomAuthButton(
            buttonImage: Assets.imagesApple,
            buttonText: S.of(context).appleSign,
          ),
          CustomAuthButton(
            buttonImage: Assets.imagesFacebook,
            buttonText: S.of(context).facebookSign,
          ),
        ],
      ),
    );
  }
}
