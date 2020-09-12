import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:manaus_verde/app/models/marker_model.dart';
import 'package:manaus_verde/app/repositories/marker/repository/interfaces/marker_repository_interface.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'marker_repository_controller.g.dart';

@Injectable()
class MarkerRepositoryController = _MarkerRepositoryControllerBase
    with _$MarkerRepositoryController;

abstract class _MarkerRepositoryControllerBase with Store {
  final IMarkerRepository _markerRepository = Modular.get();

  ///
  @observable
  MarkerModel marker;

  ///
  @observable
  ObservableList<MarkerModel> markerList = ObservableList();

  ///
  @observable
  bool loading = false;

  ///
  _MarkerRepositoryControllerBase() {
    getMarkers();
  }

  ///
  @action
  setMarker(MarkerModel value) => marker = value;

  ///
  @action
  setMarkers(ObservableList<MarkerModel> value) async => markerList = value;

  ///
  Future getMarker(String idMarker) async {
    DocumentSnapshot snapshot = await _markerRepository.getMarker(idMarker);

    Map<String, dynamic> data = snapshot.data;

    var markerLocal = MarkerModel(
      idMarker: snapshot.documentID,
      idUserCreator: data["idUserCreator"],
      idTypeMarker: data["idTypeMarker"],
      title: data["title"],
      description: data["description"],
      da: data["da"],
      di: data["di"],
      dm: data["dm"],
      dv: data["dv"],
      latitude: data["latitude"],
      longitude: data["longitude"],
    );
    setMarker(markerLocal);
    return marker;
  }

  ///
  Stream<QuerySnapshot> getMarkers() {
    return _markerRepository.getMarkers();
  }

  ///
  Stream<QuerySnapshot> getMarkerUser(String idUser) {
    return _markerRepository.getMarkerUser(idUser);
  }

  ///
  Future deleteMarker() {
    return _markerRepository.deleteMarker(marker.idMarker);
  }

  ///
  Future saveMarker() {
    return _markerRepository.saveMarker(marker.toMap());
  }

  ///
  Future updateMarker(MarkerModel marker) {
    return _markerRepository.updateMarker(marker);
  }
}
