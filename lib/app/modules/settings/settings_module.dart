import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/modules/settings/settings_controller.dart';
import 'package:manaus_verde/app/modules/settings/settings_page.dart';
// import 'package:manaus_verde/app/repositories/user/user_repository_controller.dart';

class SettingsModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SettingsController()),
        // Bind((i) => UserRepositoryController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SettingsPage()),
      ];

  static Inject get to => Inject<SettingsModule>.of();

  @override
  // TODO: implement view
  Widget get view => SettingsPage();
}
