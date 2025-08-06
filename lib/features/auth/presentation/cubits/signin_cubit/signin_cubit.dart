import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/features/auth/domain/repos/auth_repo.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signin_cubit/signin_states.dart';

class SigninCubit extends Cubit<SigninStates>{
  SigninCubit(this.authRepo):super(SigninInitialState());
 final  AuthRepo authRepo;
 Future<void> signInWithEmailAndPassword({required String email,required String password}) async {
    emit(SigninLoadingState());
    final result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SigninErrorState(failure.message)),
      (user) => emit(SigninSuccessState(user)),
    );
  }
}