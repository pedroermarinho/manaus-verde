import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/repositories/auth/repository/auth_repository.dart';
import 'package:manaus_verde/app/repositories/auth/repository/interfaces/auth_repository_interface.dart';
import 'package:manaus_verde/app/shared/utils/user_util.dart';
import 'package:mobx/mobx.dart';

part 'auth_repository_controller.g.dart';

@Injectable()
class AuthRepositoryController = _AuthRepositoryControllerBase
    with _$AuthRepositoryController;

abstract class _AuthRepositoryControllerBase with Store {
  final IAuthRepository _authRepository = AuthRepository();

  @observable
  FirebaseUser _userAuth;

  @computed
  Future<FirebaseUser> get userAuth async {
    if (_userAuth != null) {
      return _userAuth;
    } else {
      _userAuth = await _authRepository.getUser();
      return _userAuth;
    }
  }

  @observable
  AuthStatus status = AuthStatus.loading;

  @action
  setUser(FirebaseUser value) {
    _userAuth = value;
    status = _userAuth == null ? AuthStatus.logoff : AuthStatus.login;
  }

  _AuthRepositoryControllerBase() {
    _authRepository.getUser().then(setUser);
  }

  Future loginWithEmailPasswordLogin(String email, String password) async {
    return _authRepository
        .getEmailPasswordLogin(email, password)
        .whenComplete(() {
      _authRepository.getUser().then(setUser);
    });
  }

  Future logout() {
    return _authRepository.logout().whenComplete(() {
      _authRepository.getUser().then(setUser);
    });
  }
}
