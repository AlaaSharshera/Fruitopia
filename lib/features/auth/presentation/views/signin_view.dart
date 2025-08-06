import 'package:flutter/material.dart';
import 'package:fruitopia/core/widgets/custom_appbar.dart';
import 'package:fruitopia/features/auth/presentation/widgets/signin_view_body.dart';
import 'package:fruitopia/generated/l10n.dart';


class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: S.of(context).login),
      body:SigninViewBody(),
    );
  }
}



