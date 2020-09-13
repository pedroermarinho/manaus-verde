import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/modules/profile/profile_controller.dart';
import 'package:manaus_verde/app/modules/profile/profile_page.dart';

class ProfileModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ProfilePage()),
      ];

  static Inject get to => Inject<ProfileModule>.of();

  @override
  Widget get view => ProfilePage();
}
