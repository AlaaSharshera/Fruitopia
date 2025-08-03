import 'package:flutter/material.dart';
import 'package:fruitopia/core/widgets/custom_appbar.dart';
import 'package:fruitopia/features/auth/presentation/widgets/otp_view_body.dart';
import 'package:fruitopia/generated/l10n.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});
  static const routeName = '/otp-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: S.of(context).verifyCodeTitle),
      body: OTPViewBody(),
    );
  }
}

