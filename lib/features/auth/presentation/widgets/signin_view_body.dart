import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/helper_functions/show_snack_bar.dart';
import 'package:fruitopia/core/utils/app_images.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/core/widgets/custom_loading_indicator.dart';
import 'package:fruitopia/core/widgets/custom_textformfield.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signin_cubit/signin_states.dart';
import 'package:fruitopia/features/auth/presentation/views/forget_pass_view.dart';
import 'package:fruitopia/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_forgetpass_button.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_have_account_row.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_or_divider.dart';
import 'package:fruitopia/generated/l10n.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninStates>(
      listener: (context, state) {
        if (state is SigninSuccessState) {
          log("Success");
        }
        if (state is SigninErrorState) {
          showErrorSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomLoadingIndicator(
          isLoading: state is SigninLoadingState,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.r),
                    child: CustomTextFormField(
                      hintText: S.of(context).email,
                      textInputType: TextInputType.emailAddress,
                      onSaved: (value) {
                        email = value;
                      },
                    ),
                  ),
                  CustomTextFormField(
                    hintText: S.of(context).password,
                    obscureText: true,
                    onSaved: (value) {
                      password = value;
                    },
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xffC9CECF),
                    ),
                  ),
                  customForgetPassButton(
                    context,
                    onPressed: () {
                      Navigator.pushNamed(context, ForgetPassView.routeName);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.r),
                    child: CustomButton(
                      text: S.of(context).login,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          autovalidateMode = AutovalidateMode.disabled;

                          context
                              .read<SigninCubit>()
                              .signInWithEmailAndPassword(
                                email: email!,
                                password: password!,
                              );
                        } else {
                          autovalidateMode = AutovalidateMode.onUserInteraction;
                        }
                      },
                    ),
                  ),
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
            ),
          ),
        );
      },
    );
  }
}
