import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/modules/information/components/comments/comments_controller.dart';
import 'package:manaus_verde/app/modules/information/components/marker_icon_detector/marker_icon_detector_controller.dart';
import 'package:manaus_verde/app/modules/information/components/stars_icon/stars_icon_controller.dart';
import 'package:manaus_verde/app/modules/information/information_controller.dart';
import 'package:manaus_verde/app/modules/information/information_page.dart';
import 'package:manaus_verde/app/repositories/comment/comment_repository_controller.dart';
import 'package:manaus_verde/app/repositories/comment/repository/comment_repository.dart';
import 'package:manaus_verde/app/repositories/stars/repository/stars_repository.dart';
import 'package:manaus_verde/app/repositories/stars/stars_repository_controller.dart';
// import 'package:manaus_verde/app/repositories/user/user_repository_controller.dart';

class InformationModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StarsRepositoryController()),
        Bind((i) => StarsRepository()),
        Bind((i) => CommentsController()),
        Bind((i) => StarsIconController()),
        Bind((i) => MarkerIconDetectorController()),
        Bind((i) => InformationController()),
        Bind((i) => CommentRepositoryController()),
        Bind((i) => CommentRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => InformationPage()),
      ];

  static Inject get to => Inject<InformationModule>.of();

  @override
  // TODO: implement view
  Widget get view => InformationPage();
}
