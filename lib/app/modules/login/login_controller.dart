import 'package:email_validator/email_validator.dart';
import 'package:flutter/services.dart';
import 'package:manaus_verde/app/repositories/auth/auth_repository_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final _auth = Modular.get<AuthRepositoryController>();

  @observable
  bool loading = false;

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String messageError = "";

  @action
  setEmail(String value) => email = value;

  @action
  setPassword(String value) => password = value;

  // @action
  // Future loginWithGoogle() async {
  //   try {
  //     loading = true;
  //     await _auth.loginWithGoogle();
  //     Modular.to.pushReplacementNamed("/home");
  //   } catch (e) {
  //     loading = false;
  //   }
  // }

  @action
  Future loginWithEmailPasswordLogin() async {
    pushHome();
    messageError = "";
    try {
      loading = true;
      await _auth.loginWithEmailPasswordLogin(email, password).then((_) {
        pushHome();
      }).catchError((error) {
        PlatformException exception = error;
        print(exception.code);
        String mensagemException = "";

        if (exception.code == "ERROR_USER_NOT_FOUND") {
          mensagemException += "\nUsuário não encontrado!";
        }
        if (exception.code == "ERROR_WRONG_PASSWORD") {
          mensagemException += "\nSenha incorreta!";
        }
        if (exception.code == "ERROR_NETWORK_REQUEST_FAILED") {
          mensagemException += "\nNão possivel se conectar com a internet!";
        }
        loading = false;

        messageError =
            "Erro ao autenticar usuário, verifique e-mail e senha e tente novamente!" +
                mensagemException;
      });
    } catch (e) {
      loading = false;
    }


  }

  Future pushRegister() {
    return Modular.to.pushNamed("/register");
  }

  Future pushHome() {
    return Modular.to.pushReplacementNamed("/home");
  }

  @computed
  bool get isValid {
    return validateEmail() == null && validatePassword() == null;
  }

  String validateEmail() {
    if (email == null || email.isEmpty) {
      return "O campo E-mail é obrigatório";
    }
    if (!EmailValidator.validate(email)) {
      return "Esse E-mail não é válido";
    }
    return null;
  }

  String validatePassword() {
    if (password == null || password.isEmpty) {
      return "O campo Senha é obrigatório";
    }
    if (password.length < 6) {
      return "A Senha precisa ter mais de 6 caracteres";
    }
    return null;
  }
}
