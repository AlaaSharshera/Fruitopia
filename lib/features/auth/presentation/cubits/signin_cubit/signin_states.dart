import 'package:fruitopia/features/auth/domain/entities/user_entity.dart';

class SigninStates {}
class SigninInitialState extends SigninStates {}
class SigninLoadingState extends SigninStates {}
class SigninSuccessState extends SigninStates {
  final UserEntity user;
  SigninSuccessState(this.user);
}
class SigninErrorState extends SigninStates {
  final String message;
  SigninErrorState(this.message);
}