import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/components/sidebar/components/menu_item/menu_item_widget.dart';
import 'package:manaus_verde/app/components/sidebar/sidebar_controller.dart';
import 'package:manaus_verde/app/shared/utils/user_util.dart';
// import 'package:manaus_verde/app/shared/utils/user_util.dart';
import 'package:rxdart/rxdart.dart';

class SidebarWidget extends StatefulWidget {
  @override
  _SidebarWidgetState createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget>
    with SingleTickerProviderStateMixin<SidebarWidget> {
  final SidebarController controller = Modular.get();

  @override
  void initState() {
    super.initState();
    controller.animationController = AnimationController(
      vsync: this,
      duration: controller.animationDuration,
    );
    controller.isSidebarOpenedStreamController = PublishSubject<bool>();
    controller.isSidebarOpenedStream =
        controller.isSidebarOpenedStreamController.stream;
    controller.isSidebarOpenedSink =
        controller.isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    controller.animationController.dispose();
    controller.isSidebarOpenedStreamController.close();
    controller.isSidebarOpenedSink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Observer(
      builder: (_) {
        return StreamBuilder<bool>(
          initialData: false,
          stream: controller.isSidebarOpenedStream,
          builder: (context, isSideBarOpenedAsync) {
            return AnimatedPositioned(
              duration: controller.animationDuration,
              top: 0,
              bottom: 0,
              left: isSideBarOpenedAsync.data ? 0 : -screenWidth,
              right: isSideBarOpenedAsync.data ? 0 : screenWidth - 113,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            ListTile(
                              title: Observer(
                                builder: (_) {
                                  return Text(
                                    controller.user == null
                                        ? ""
                                        : controller.user.name,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  );
                                },
                              ),
                              leading: SizedBox(
                                width: 60,
                                height: 60,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffe6c131),
                                  radius: 30,
                                  backgroundImage: controller.user == null
                                      ? NetworkImage(
                                          UserUtil.caminhoFotoUser,
                                        )
                                      : NetworkImage(
                                          controller.user.pathPhoto,
                                        ),
                                ),
                              ),
                            ),
                            Divider(
                              height: 40,
                              thickness: 0.5,
                              color: Colors.white.withOpacity(0.3),
                              indent: 32,
                              endIndent: 32,
                            ),
                            MenuItemWidget(
                              icon: Icons.person_pin,
                              title: "Perfil",
                              onTap: () {
                                controller.pushProfile();
                                controller.onIconPressed();
                              },
                            ),
                            MenuItemWidget(
                              icon: Icons.info,
                              title: "Sobre",
                              onTap: () {
                                controller.pushAbout();
                                controller.onIconPressed();
                              },
                            ),
                            Divider(
                              height: 40,
                              thickness: 0.5,
                              color: Colors.white.withOpacity(0.3),
                              indent: 32,
                              endIndent: 32,
                            ),
                            MenuItemWidget(
                              icon: Icons.settings,
                              title: "Configurações",
                              onTap: () {
                                controller.pushSettings();
                                controller.onIconPressed();
                              },
                            ),
                            MenuItemWidget(
                              icon: Icons.exit_to_app,
                              title: "Deslogar",
                              onTap: () {
                                controller.logoutUser();
                                controller.onIconPressed();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 80),
                    child: Align(
                      alignment: Alignment(0, -0.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.onIconPressed();
                        },
                        child: ClipPath(
                          clipper: CustomMenuClipper(),
                          child: Container(
                            width: 36,
                            height: 115,
                            color: Colors.white,
                            alignment: Alignment.centerLeft,
                            child: AnimatedIcon(
                              progress: controller.animationController.view,
                              icon: AnimatedIcons.menu_close,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
