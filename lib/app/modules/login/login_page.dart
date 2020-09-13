import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/components/text_field_custom/text_field_custom_widget.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFieldCustomWidget(
                    labelText: "E-mail",
                    textInputType: TextInputType.emailAddress,
                    errorText: controller.validateEmail,
                    onChanged: controller.setEmail,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFieldCustomWidget(
                    labelText: "Senha",
                    obscureText: true,
                    textInputType: TextInputType.visiblePassword,
                    errorText: controller.validatePassword,
                    onChanged: controller.setPassword,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Observer(
                    builder: (_) {
                      return FlatButton(
                        child: Text(
                          "Entrar",
                          style: TextStyle(fontSize: 25),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        onPressed: controller.isValid
                            ? controller.loginWithEmailPasswordLogin
                            : null,
                      );
                    },
                  ),
                ),
                Center(
                  child: GestureDetector(
                    child: Text(
                      "Não tem conta? cadastre-se!",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    onTap: controller.pushRegister,
                  ),
                ),
                Observer(
                  builder: (_) {
                    return controller.loading
                        ? Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Container();
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Observer(
                    builder: (_) {
                      return Center(
                        child: Text(
                          controller.messageError,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
