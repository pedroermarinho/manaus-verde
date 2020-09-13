import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geolocator/geolocator.dart';
import 'package:manaus_verde/app/components/google_map_custom/google_map_custom_controller.dart';
import 'package:manaus_verde/app/models/marker_model.dart';
import 'package:manaus_verde/app/repositories/auth/auth_repository_controller.dart';
import 'package:manaus_verde/app/repositories/marker/marker_repository_controller.dart';
import 'package:mobx/mobx.dart';

part 'marker_controller.g.dart';

class MarkerController = _MarkerControllerBase with _$MarkerController;

abstract class _MarkerControllerBase with Store {
  final _markerRepositoryController = Modular.get<MarkerRepositoryController>();
  final _googleMapController = Modular.get<GoogleMapCustomController>();
  final _authController = Modular.get<AuthRepositoryController>();

  @observable
  String name;

  @observable
  String description;

  @observable
  bool paper = false;

  @observable
  bool glass = false;

  @observable
  bool plastic = false;

  @observable
  bool organic = false;

  @observable
  bool electronic = false;

  @action
  setPaper(bool value) => paper = value;

  @action
  setGlass(bool value) => glass = value;

  @action
  setPlastic(bool value) => plastic = value;

  @action
  setOrganic(bool value) => organic = value;

  @action
  setElectronic(bool value) => electronic = value;

  @action
  setName(String value) => name = value;

  @action
  setDescription(String value) => description = value;

  @observable
  MarkerModel marker;

  @action
  setMarker(MarkerModel value) {
    marker = value;
    editMarker();
  }

  @observable
  String messageError = "";

  @observable
  bool loading = false;

  @observable
  Position position;

  @action
  setPosition(Position value) => position = value;

  _MarkerControllerBase() {
    position = _googleMapController.positionActual;
  }

  @computed
  bool get isValid {
    return validateName() == null && validateDescription() == null;
  }

  String validateName() {
    if (name == null || name.isEmpty) {
      return "O campo Nome é obrigatório";
    }
    return null;
  }

  String validateDescription() {
    if (description == null || description.isEmpty) {
      return "O campo Descrição é obrigatório";
    }
    if (description.length < 10) {
      return "A Descrição precisa ter mais de 10 caracteres";
    }
    return null;
  }

  validCampos() async {
    final userAuth = await _authController.userAuth;
    //validar campos
    if (name.isNotEmpty) {
      if (description.isNotEmpty) {
        if (marker == null) {
          marker = MarkerModel();
          marker.idUserCreator = userAuth.uid;
          marker.title = name;
          marker.description = description;
          marker.paper = paper;
          marker.glass = glass;
          marker.plastic = plastic;
          marker.organic = organic;
          marker.electronic = electronic;
          marker.longitude = position.longitude;
          marker.latitude = position.latitude;

          loadMarker(marker);
        } else {
          marker.title = name;
          marker.description = description;
          marker.paper = paper;
          marker.glass = glass;
          marker.plastic = plastic;
          marker.organic = organic;
          marker.electronic = electronic;
          updateMarker();
        }
      } else {
        messageError = "Preencha a Descrição";
      }
    } else {
      messageError = "Preencha o Nome";
    }
  }

  loadMarker(MarkerModel marker) {
    loading = true;
    _markerRepositoryController.setMarker(marker);
    _markerRepositoryController.saveMarker().then((value) {
      loading = false;
      _googleMapController.markers.clear();
      _googleMapController.loadMarkers();
      Modular.to.pop();
    }).catchError((error) {
      print(error);
      loading = false;
      messageError =
          "Erro ao cadastrar marcador, verifique os campos e tente novamente!";
    });
  }

  updateMarker() {
    loading = true;
    print(marker.idMarker);
    _markerRepositoryController.updateMarker(marker).then(
      (value) {
        loading = false;
        _googleMapController.markers.clear();
        _googleMapController.loadMarkers();
        Modular.to.pop();
      },
    ).catchError(
      (error) {
        PlatformException errorException = error;
        print(errorException.code);
        loading = false;
        messageError =
            "Erro ao atualizar o marcador, verifique os campos e tente novamente!";
      },
    );
  }

  editMarker() async {
    if (marker != null) {
      name = marker.title;
      description = marker.description;
      paper = marker.paper;
      glass = marker.glass;
      plastic = marker.plastic;
      organic = marker.organic;
      electronic = marker.electronic;

      position = Position(
        longitude: marker.longitude,
        latitude: marker.latitude,
      );
    }
  }
}
