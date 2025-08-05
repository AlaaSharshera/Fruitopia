import 'package:fruitopia/core/services/firebase_auth.dart';
import 'package:fruitopia/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:fruitopia/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImplementation(firebaseAuthService: getIt<FirebaseAuthService>()));
}