import 'package:dartz/dartz.dart';
import 'package:fruitopia/core/errors/failures.dart';
import 'package:fruitopia/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(String email, String password,String name)  {
    throw UnimplementedError();
  }
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword(String email, String password,String name)  {
    throw UnimplementedError();
  }

}