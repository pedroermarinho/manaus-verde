import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/components/text_field_custom/text_field_custom_widget.dart';

import 'settings_controller.dart';

class SettingsPage extends StatefulWidget {
  final String title;

  const SettingsPage({Key key, this.title = "Configurações"}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState
    extends ModularState<SettingsPage, SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Observer(builder: (_) {
          return controller.user == null || controller.loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  child: Center(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          Observer(builder: (_) {
                            return CircleAvatar(
                              radius: 100,
                              backgroundImage: controller.images == null
                                  ? NetworkImage(controller.user.pathPhoto)
                                  : FileImage(controller.images),
                            );
                          }),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                child: Text(
                                  "Câmera",
                                  style: TextStyle(fontSize: 18),
                                ),
                                onPressed: () {
                                  controller.getImage("camera");
                                },
                              ),
                              FlatButton(
                                child: Text(
                                  "Galeria",
                                  style: TextStyle(fontSize: 18),
                                ),
                                onPressed: () {
                                  controller.getImage("galeria");
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, top: 20),
                            child: TextFieldCustomWidget(
                              controller: TextEditingController(
                                  text: controller.user.name),
                              onChanged: controller.setName,
                              errorText: controller.validateName,
                              labelText: "Nome Completo",
                              textInputType: TextInputType.text,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Observer(builder: (_) {
                              return FlatButton(
                                child: Text(
                                  "Salvar",
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                color: Colors.green,
                                padding: EdgeInsets.fromLTRB(32, 16, 36, 16),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32)),
                                onPressed:
                                    controller.isValid ? controller.save : null,
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
        }));
  }
}
