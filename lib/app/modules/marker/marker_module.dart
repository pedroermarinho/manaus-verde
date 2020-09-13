import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/modules/marker/marker_controller.dart';
import 'package:manaus_verde/app/modules/marker/marker_page.dart';
// import 'package:manaus_verde/app/repositories/marker/marker_repository_controller.dart';

class MarkerModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MarkerController()),
        // Bind((i) => MarkerRepositoryController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => MarkerPage(
                  marker: args.data,
                )),
      ];

  static Inject get to => Inject<MarkerModule>.of();

  @override
  // TODO: implement view
  Widget get view => MarkerPage(
        marker: Modular.args.data,
      );
}
