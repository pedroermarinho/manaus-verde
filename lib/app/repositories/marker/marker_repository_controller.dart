import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/marker_model.dart';
import 'package:manaus_verde/app/repositories/marker/repository/interfaces/marker_repository_interface.dart';
import 'package:mobx/mobx.dart';

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

    final data = snapshot.data;

    var markerLocal = MarkerModel.fromJson(data);
    markerLocal.idMarker = snapshot.documentID;
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
