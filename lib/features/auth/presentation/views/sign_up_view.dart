import 'package:flutter/material.dart';
import 'package:fruitopia/core/widgets/custom_appbar.dart';
import 'package:fruitopia/features/auth/presentation/widgets/signup_body.dart';
import 'package:fruitopia/generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = '/signUpView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: S.of(context).registerTitle),
      body: SignUpBody(),
    );
  }
}