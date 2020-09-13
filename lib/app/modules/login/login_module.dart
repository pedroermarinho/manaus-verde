import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_controller.dart';
import 'login_page.dart';

class LoginModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $LoginController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();

  @override
  Widget get view => LoginPage();
}
