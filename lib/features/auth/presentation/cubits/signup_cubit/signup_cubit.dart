import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitopia/features/auth/domain/repos/auth_repo.dart';
import 'package:fruitopia/features/auth/presentation/cubits/signup_cubit/signup_states.dart';

class SignupCubit extends Cubit<SignupStates> {
  final AuthRepo authRepo;

  SignupCubit(this.authRepo) : super(SignupInitial());

  Future<void> createUserWithEmailAndPassword({required String email,required String password,required String name}) async {
    emit(SignupLoading());
    final result = await authRepo.createUserWithEmailAndPassword(email, password, name);
    result.fold(
      (failure) => emit(SignupFailure(failure.message)),
      (user) => emit(SignupSuccess(user)),
    );
  }
}
