import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geolocator/geolocator.dart';
import 'package:manaus_verde/app/components/google_map_custom/google_map_custom_controller.dart';
import 'package:manaus_verde/app/models/favorite_model.dart';
import 'package:manaus_verde/app/models/marker_model.dart';
import 'package:manaus_verde/app/repositories/favorite/favorite_repository_controller.dart';
import 'package:manaus_verde/app/repositories/marker/marker_repository_controller.dart';
// import 'package:manaus_verde/app/models/marker_model.dart';
// import 'package:manaus_verde/app/repositories/favorite/favorite_repository_controller.dart';
// import 'package:manaus_verde/app/repositories/marker/marker_repository_controller.dart';
import 'package:mobx/mobx.dart';

part 'show_favorite_list_controller.g.dart';

class ShowFavoriteListController = _ShowFavoriteListControllerBase
    with _$ShowFavoriteListController;

abstract class _ShowFavoriteListControllerBase with Store {
  final _favoriteRepositoryController =
      Modular.get<FavoriteRepositoryController>();
  final _markerRepositoryController = Modular.get<MarkerRepositoryController>();
  final _googleMapCustomController = Modular.get<GoogleMapCustomController>();

  ObservableList<Widget> listWidget = ObservableList();

  _ShowFavoriteListControllerBase();

  Widget itemListTile(
      {String labelText = "", IconData icon = Icons.favorite, Function onTap}) {
    return ListTile(
      onTap: onTap,
      title: Text(
        labelText,
        style: TextStyle(fontSize: 16),
      ),
      leading: Icon(
        icon,
        size: 40,
        color: Color(0xffe6c131),
      ),
    );
  }

  loadList(BuildContext context) async {
    listWidget.clear();
    await _favoriteRepositoryController.getFavoritesUser().then((value) {
      value.listen((event) {
        for (var documents in event.documents) {
          final  data = documents.data;
          final favorite = FavoriteModel.fromJson(data);
          favorite.idFavorite =documents.documentID;
          loadListWidget(favorite, context);
        }
      },);
    },);
  }

  loadListWidget(FavoriteModel favorite, BuildContext context) async {
    MarkerModel marker =
        await _markerRepositoryController.getMarker(favorite.idMarker);
    final Widget widget = itemListTile(
      labelText: "${marker.title}",
      onTap: () {
        _googleMapCustomController.newLocationPosition(
          Position(
            longitude: marker.longitude,
            latitude: marker.latitude,
          ),
        );
        Navigator.pop(context);
      },
    );
    listWidget.add(widget);
  }
}
