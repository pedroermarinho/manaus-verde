import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/routes.dart';
import 'package:manaus_verde/app/modules/home/home_module.dart';
import 'package:manaus_verde/app/modules/login/login_module.dart';
import 'package:manaus_verde/app/shared/styles/theme_style.dart';
import 'package:manaus_verde/app/shared/locale/locales.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: AppTheme().themeData(),
      routes: AppRoutes().routeMain(),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      localizationsDelegates: [
        const AppLocaleDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt'),
        // const Locale('en'),
      ],
    );
  }
}
