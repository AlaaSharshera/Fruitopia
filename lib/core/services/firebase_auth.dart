import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruitopia/core/errors/exceptions.dart';
import 'package:fruitopia/generated/l10n.dart';

class FirebaseAuthService {
Future<User> createUserWithEmailAndPassword({required String email, required String password}) async {
 try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
  return credential.user!;
} on FirebaseAuthException catch (e) {

    log("Exception in FirebaseAuth.createUserWithEmailAndPassword: ${e.message} e.code is: ${e.code}");
  if (e.code == 'weak-password') {
   throw CustomException(S.current.weakPassword);
  } else if (e.code == 'email-already-in-use') {
   throw CustomException(S.current.existedEmail);
  }else if (e.code == 'network-request-failed') {
    throw CustomException(S.current.networkError); }
  else{
    throw CustomException(S.current.errorOccured);
  }
} catch (e) {
  log("Exception in catch section in FirebaseAuth.createUserWithEmailAndPassword: ${e.toString()}");
  throw CustomException(S.current.errorOccured);
}
}}