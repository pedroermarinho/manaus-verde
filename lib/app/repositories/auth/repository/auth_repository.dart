import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'interfaces/auth_repository_interface.dart';

part 'auth_repository.g.dart';

@Injectable()
class AuthRepository implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<FirebaseUser> getEmailPasswordLogin(
      String email, String password) async {
    return (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
  }

  @override
  Future<FirebaseUser> getUser() async {
    return await _auth.currentUser();
  }

  @override
  Future logout() async {
    return await _auth.signOut();
  }
}
