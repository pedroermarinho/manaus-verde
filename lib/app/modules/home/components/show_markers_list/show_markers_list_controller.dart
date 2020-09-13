import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/components/google_map_custom/google_map_custom_controller.dart';
import 'package:mobx/mobx.dart';

part 'show_markers_list_controller.g.dart';

class ShowMarkersListController = _ShowMarkersListControllerBase
    with _$ShowMarkersListController;

abstract class _ShowMarkersListControllerBase with Store {
  final _googleMapCustomController = Modular.get<GoogleMapCustomController>();

  getPaper() {
    _googleMapCustomController.loadMarkersCategories("paper");
  }

  getGlass() {
    _googleMapCustomController.loadMarkersCategories("glass");
  }

  getPlastic() {
    _googleMapCustomController.loadMarkersCategories("plastic");
  }

  getOrganic() {
    _googleMapCustomController.loadMarkersCategories("organic");
  }

  getElectronic() {
    _googleMapCustomController.loadMarkersCategories("electronic");
  }



  getALL() {
    _googleMapCustomController.loadMarkersCategories("all");
  }
}
