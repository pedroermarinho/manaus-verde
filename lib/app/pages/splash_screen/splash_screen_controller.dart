import 'package:manaus_verde/app/repositories/auth/auth_repository_controller.dart';
import 'package:manaus_verde/app/shared/utils/user_util.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'splash_screen_controller.g.dart';

@Injectable()
class SplashScreenController = _SplashScreenControllerBase
    with _$SplashScreenController;

abstract class _SplashScreenControllerBase with Store {
  final AuthRepositoryController _authController =
  Modular.get<AuthRepositoryController>();

  @observable
  ReactionDisposer disposer;

  @action
  isValid() async {
    disposer = autorun((_) {
      if (_authController.status == AuthStatus.login) {
        pushHome();
      } else if (_authController.status == AuthStatus.logoff) {
        pushLogin();
      }
    });
  }

  Future pushLogin() {
    return Modular.to.pushReplacementNamed("/login");
  }

  Future pushHome() {
    return Modular.to.pushReplacementNamed("/home");
  }
}
