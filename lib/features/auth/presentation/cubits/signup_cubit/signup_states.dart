import 'package:fruitopia/features/auth/domain/entities/user_entity.dart';

class SignupStates {}

class SignupInitial extends SignupStates {}

class SignupLoading extends SignupStates {}

class SignupSuccess extends SignupStates {
  final UserEntity user;

  SignupSuccess(this.user);
}

class SignupFailure extends SignupStates {
  final String error;

  SignupFailure(this.error);
}
