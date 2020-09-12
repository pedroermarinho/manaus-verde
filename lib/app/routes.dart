import 'package:flutter/material.dart';
import 'package:manaus_verde/app/modules/home/home_module.dart';
import 'package:manaus_verde/app/modules/information/information_module.dart';
import 'package:manaus_verde/app/modules/login/login_module.dart';
import 'package:manaus_verde/app/modules/marker/marker_module.dart';
import 'package:manaus_verde/app/modules/profile/profile_module.dart';
import 'package:manaus_verde/app/modules/register/register_module.dart';
import 'package:manaus_verde/app/modules/settings/settings_module.dart';
import 'package:manaus_verde/app/pages/about/about_page.dart';
import 'package:manaus_verde/app/pages/splash_screen/splash_screen_page.dart';

class AppRoutes {
  Map<String, WidgetBuilder> routeMain() {
    return {
      '/': (context) => SplashScreenPage(),
      '/home': (context) => HomeModule(),
      '/settings': (context) => SettingsModule(),
      '/profile': (context) => ProfileModule(),
      '/marker': (context) => MarkerModule(),
      '/login': (context) => LoginModule(),
      '/information': (context) => InformationModule(),
      '/about': (context) => AboutPage(),
      '/register': (context) => RegisterModule()
    };
  }
}
