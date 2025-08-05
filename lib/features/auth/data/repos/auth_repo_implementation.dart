import 'package:dartz/dartz.dart';
import 'package:fruitopia/core/errors/exceptions.dart';
import 'package:fruitopia/core/errors/failures.dart';
import 'package:fruitopia/core/services/firebase_auth.dart';
import 'package:fruitopia/features/auth/data/models/user_model.dart';
import 'package:fruitopia/features/auth/domain/entities/user_entity.dart';
import 'package:fruitopia/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImplementation implements AuthRepo{
  final FirebaseAuthService firebaseAuthService;
  AuthRepoImplementation({required this.firebaseAuthService});
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(String email, String password,String name) async {
    try {
      final user = await firebaseAuthService.createUserWithEmailAndPassword(email: email, password: password);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    }catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

}