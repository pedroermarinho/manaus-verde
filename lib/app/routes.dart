import 'package:flutter/material.dart';
import 'package:manaus_verde/app/modules/home/home_module.dart';
import 'package:manaus_verde/app/modules/information/information_module.dart';
import 'package:manaus_verde/app/modules/login/login_module.dart';
import 'package:manaus_verde/app/modules/marker/marker_module.dart';
import 'package:manaus_verde/app/modules/profile/profile_module.dart';
import 'package:manaus_verde/app/modules/register/register_module.dart';
import 'package:manaus_verde/app/modules/settings/settings_module.dart';

class AppRoutes {
  Map<String, WidgetBuilder> routeMain() {
    return {
      '/': (context) => LoginModule(),
      '/home': (context) => HomeModule(),
      '/settings': (context) => SettingsModule(),
      '/profile': (context) => ProfileModule(),
      '/marker': (context) => MarkerModule(),
      '/login': (context) => LoginModule(),
      '/information': (context) => InformationModule(),
      '/register': (context) => RegisterModule()
    };
  }
}
