import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/modules/home/components/show_favorite_list/show_favorite_list_controller.dart';
import 'package:manaus_verde/app/modules/home/components/show_markers_list/show_markers_list_controller.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $HomeController,
        Bind((i) => ShowFavoriteListController()),
        Bind((i) => ShowMarkersListController())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();

  @override
  Widget get view => HomePage();
}
