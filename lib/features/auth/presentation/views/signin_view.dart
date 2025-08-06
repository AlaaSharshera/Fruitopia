import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/core/services/get_it_service.dart';
import 'package:fruitopia/core/widgets/custom_appbar.dart';
import 'package:fruitopia/features/auth/domain/repos/auth_repo.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruitopia/features/auth/presentation/widgets/signin_view_body.dart';
import 'package:fruitopia/generated/l10n.dart';


class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SigninCubit>(
      create: (context) => SigninCubit(getIt<AuthRepo>() ),
      child: Scaffold(
        appBar: customAppBar(context, title: S.of(context).login),
        body:SigninViewBody(),
      ),
    );
  }
}



