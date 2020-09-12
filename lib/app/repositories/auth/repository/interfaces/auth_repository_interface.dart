import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class IAuthRepository  {
  Future<FirebaseUser> getUser();

  Future<FirebaseUser> getEmailPasswordLogin(String email, String password);

  Future<FirebaseUser> getEmailGoogleLogin();

  Future logout();
}
