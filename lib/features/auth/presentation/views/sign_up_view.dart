import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/core/services/get_it_service.dart';
import 'package:fruitopia/core/widgets/custom_appbar.dart';
import 'package:fruitopia/features/auth/domain/repos/auth_repo.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruitopia/features/auth/presentation/widgets/signup_body.dart';
import 'package:fruitopia/generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = '/signUpView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>SignupCubit(
      getIt<AuthRepo>(),
    ),child: Scaffold(
      appBar: customAppBar(context, title: S.of(context).registerTitle),
      body: SignUpBody(),
    ),);
  }
}