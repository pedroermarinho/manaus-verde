import 'package:manaus_verde/app/components/google_map_custom/google_map_custom_controller.dart';
import 'package:manaus_verde/app/components/sidebar/sidebar_controller.dart';
import 'package:manaus_verde/app/modules/information/components/stars_icon/stars_icon_controller.dart';
import 'package:manaus_verde/app/modules/information/information_module.dart';
import 'package:manaus_verde/app/modules/login/login_module.dart';
import 'package:manaus_verde/app/modules/marker/marker_module.dart';
import 'package:manaus_verde/app/modules/profile/profile_module.dart';
import 'package:manaus_verde/app/modules/register/register_module.dart';
import 'package:manaus_verde/app/modules/settings/settings_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:manaus_verde/app/app_widget.dart';
import 'package:manaus_verde/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((i) => GoogleMapCustomController()),
        Bind((i) => StarsIconController()),
        Bind((i) => SidebarController())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LoginModule()),

        ModularRouter(Modular.initialRoute, module: ProfileModule()),
        ModularRouter(
          "/home",
          module: HomeModule(),
          transition: TransitionType.noTransition,
        ),
        ModularRouter(
          "/login",
          module: LoginModule(),
          transition: TransitionType.noTransition,
        ),
        ModularRouter(
          "/information",
          module: InformationModule(),
          transition: TransitionType.downToUp,
        ),
        ModularRouter(
          "/marker",
          module: MarkerModule(),
          transition: TransitionType.downToUp,
        ),
        ModularRouter("/register", module: RegisterModule()),
        ModularRouter(
          "/settings",
          module: SettingsModule(),
          transition: TransitionType.leftToRight,
        ),
        ModularRouter(
          "/profile",
          module: ProfileModule(),
          transition: TransitionType.leftToRight,
        ),
        // ModularRouter(
        //   "/about",
        //   child: (_, args) => AboutPage(),
        //   transition: TransitionType.leftToRight,
        // ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
