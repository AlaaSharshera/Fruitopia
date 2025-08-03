import 'package:flutter/material.dart';
import 'package:fruitopia/core/widgets/custom_appbar.dart';
import 'package:fruitopia/features/auth/presentation/widgets/forget_pass_view_body.dart';
import 'package:fruitopia/generated/l10n.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});
static const String routeName = '/forget-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: S.of(context).forgotPasswordTitle,
      ),
      body: ForgetPassViewBody()
    );
  }
}