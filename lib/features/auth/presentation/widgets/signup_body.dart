import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/core/helper_functions/show_snack_bar.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/core/widgets/custom_textformfield.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signup_cubit/signup_states.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_have_account_row.dart';
import 'package:fruitopia/features/auth/presentation/widgets/terms_conditions_widget.dart';
import 'package:fruitopia/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? email, name, password;
  bool obscureText = true;
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupStates>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          //Navigator.pop(context);
          log("Success");
        }
        if (state is SignupFailure) {
          showErrorSnackBar(context, state.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.r),
                    child: CustomTextFormField(
                      hintText: S.of(context).fullName,
                      onSaved: (value) {
                        name = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
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
                    obscureText: obscureText,
                    suffixIcon:
                        obscureText
                            ? IconButton(
                              onPressed: () {
                                obscureText = !obscureText;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.visibility_off,
                                color: Color(0xffC9CECF),
                              ),
                            )
                            : IconButton(
                              icon: Icon(
                                Icons.visibility,
                                color: Color(0xffC9CECF),
                              ),
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                            ),
                    onSaved: (value) {
                      password = value;
                    },
                  ),
                  TermsAndConditionsWidget(
                    onChanged: (value) {
                      isTermsAccepted = value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: CustomButton(
                      text: S.of(context).registerButtonText,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          autovalidateMode = AutovalidateMode.disabled;
                          if (isTermsAccepted) {
                            context
                                .read<SignupCubit>()
                                .createUserWithEmailAndPassword(
                                  name: name!,
                                  email: email!,
                                  password: password!,
                                );
                          } else {
                            showErrorSnackBar(
                              context,
                              S.of(context).rejectTerms,
                            );
                          }
                        } else {
                          autovalidateMode = AutovalidateMode.onUserInteraction;
                        }
                      },
                    ),
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
            ),
          ),
        );
      },
    );
  }
}
