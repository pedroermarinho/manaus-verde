import 'package:manaus_verde/app/pages/about/about_page.dart';
import 'package:manaus_verde/app/pages/splash_screen/splash_screen_page.dart';

import 'pages/splash_screen/splash_screen_controller.dart';
import 'pages/about/about_controller.dart';
import 'repositories/favorite/favorite_repository_controller.dart';
import 'repositories/marker/marker_repository_controller.dart';
import 'repositories/type_marker/type_marker_repository_controller.dart';
import 'repositories/auth/auth_repository_controller.dart';
import 'repositories/user/user_repository_controller.dart';

import 'repositories/user/repository/user_repository.dart';
import 'repositories/type_marker/repository/type_marker_repository.dart';
import 'repositories/marker/repository/marker_repository.dart';
import 'repositories/favorite/repository/favorite_repository.dart';
import 'package:dio/dio.dart';
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
        $SplashScreenController,
        $AboutController,
        $FavoriteRepositoryController,
        $MarkerRepositoryController,
        $TypeMarkerRepositoryController,
        $AuthRepositoryController,
        $UserRepositoryController,
        $UserRepository,
        $TypeMarkerRepository,
        $MarkerRepository,
        $FavoriteRepository,
        $AppController,
        Bind((i) => GoogleMapCustomController()),
        Bind((i) => StarsIconController()),
        Bind((i) => SidebarController())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child:(_, args)=> SplashScreenPage()),

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
        ModularRouter(
          "/about",
          child: (_, args) => AboutPage(),
          transition: TransitionType.leftToRight,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
