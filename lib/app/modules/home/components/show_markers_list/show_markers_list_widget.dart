import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manaus_verde/app/modules/home/components/show_markers_list/show_markers_list_controller.dart';

class ShowMarkersListWidget {
  final controller = Modular.get<ShowMarkersListController>();
  final BuildContext context;

  Widget itemListTile(
      {String labelText = "",
      IconData icon = Icons.accessible,
      Function onTap}) {
    return ListTile(
      onTap: onTap,
      title: Text(
        labelText,
        style: TextStyle(fontSize: 16),
      ),
      leading: Icon(
        icon,
        size: 40,
        color: Colors.green,
      ),
    );
  }

  ShowMarkersListWidget(
    this.context,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Categorias"),
          scrollable: true,
          content: Column(
            children: <Widget>[
              itemListTile(
                icon: FontAwesomeIcons.newspaper,
                labelText: "Papel",
                onTap: () {
                  controller.getPaper();
                  Navigator.pop(context);
                },
              ),
              itemListTile(
                  icon: FontAwesomeIcons.glassCheers,
                  labelText: "Vidro",
                  onTap: () {
                    controller.getGlass();
                    Navigator.pop(context);
                  }),
              itemListTile(
                icon: FontAwesomeIcons.shoppingBasket,
                labelText: "Plástico",
                onTap: () {
                  controller.getPlastic();
                  Navigator.pop(context);
                },
              ),
              itemListTile(
                icon: FontAwesomeIcons.apple,
                labelText: "Orgânico",
                onTap: () {
                  controller.getOrganic();
                  Navigator.pop(context);
                },
              ),
              itemListTile(
                icon: FontAwesomeIcons.microchip,
                labelText: "Eletrônico",
                onTap: () {
                  controller.getElectronic();
                  Navigator.pop(context);
                },
              ),
              itemListTile(
                icon: Icons.all_inclusive,
                labelText: "Todas as categorias",
                onTap: () {
                  controller.getALL();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          contentPadding: EdgeInsets.all(10),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "Fechar",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
