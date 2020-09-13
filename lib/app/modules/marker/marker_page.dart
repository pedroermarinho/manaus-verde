import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/components/google_map_custom/google_map_custom_widget.dart';
import 'package:manaus_verde/app/components/text_field_custom/text_field_custom_widget.dart';
import 'package:manaus_verde/app/models/marker_model.dart';

import 'marker_controller.dart';

class MarkerPage extends StatefulWidget {
  final String title;
  final MarkerModel marker;

  const MarkerPage({Key key, this.title = "Marker", this.marker})
      : super(key: key);

  @override
  _MarkerPageState createState() => _MarkerPageState();
}

class _MarkerPageState extends ModularState<MarkerPage, MarkerController> {
  //use 'controller' variable to access controller
  @override
  void initState() {
    controller.setMarker(widget.marker);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Marcador"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: GoogleMapCustomWidget(
                      onMapCreated: false,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFieldCustomWidget(
                    controller: TextEditingController(
                        text: controller.marker?.title ?? ""),
                    labelText: "Nome do local",
                    textInputType: TextInputType.text,
                    onChanged: controller.setName,
                    errorText: controller.validateName,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFieldCustomWidget(
                    controller: TextEditingController(
                        text: controller.marker != null
                            ? controller.marker.description
                            : ""),
                    labelText: "Descrição",
                    textInputType: TextInputType.multiline,
                    maxLines: null,
                    onChanged: controller.setDescription,
                    errorText: controller.validateDescription,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15, top: 5),
                  child: Text(
                    "Este local suporta quais tipos lixos?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Observer(
                        builder: (_) {
                          return Switch(
                            value: controller.paper,
                            onChanged: controller.setPaper,
                          );
                        },
                      ),
                      Text(
                        "Papel",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
//                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Observer(
                        builder: (_) {
                          return Switch(
                            value: controller.glass,
                            onChanged: controller.setGlass,
                          );
                        },
                      ),
                      Text(
                        "Vidro",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
//                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Observer(
                        builder: (_) {
                          return Switch(
                            value: controller.plastic,
                            onChanged: controller.setPlastic,
                          );
                        },
                      ),
                      Text(
                        "Plástico",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Observer(
                        builder: (_) {
                          return Switch(
                            value: controller.organic,
                            onChanged: controller.setOrganic,
                          );
                        },
                      ),
                      Text(
                        "Orgânico",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Observer(
                        builder: (_) {
                          return Switch(
                            value: controller.electronic,
                            onChanged: controller.setElectronic,
                          );
                        },
                      ),
                      Text(
                        "Eletrônico",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Observer(
                  builder: (_) {
                    return controller.loading
                        ? Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 10),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Container();
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Observer(
                    builder: (_) {
                      return Visibility(
                        visible: controller.isValid,
                        child: FlatButton(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            "Salvar",
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: controller.validCampos,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Observer(
                      builder: (_) {
                        return Text(
                          controller.messageError,
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
