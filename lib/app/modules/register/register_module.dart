import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'register_controller.dart';
import 'register_page.dart';

class RegisterModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => RegisterPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();

  @override
  Widget get view => RegisterPage();
}
