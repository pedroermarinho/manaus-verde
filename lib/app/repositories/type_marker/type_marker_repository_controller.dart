import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:manaus_verde/app/models/type_marker_model.dart';
import 'package:manaus_verde/app/repositories/type_marker/repository/interfaces/type_marker_repository_interface.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'type_marker_repository_controller.g.dart';

@Injectable()
class TypeMarkerRepositoryController = _TypeMarkerRepositoryControllerBase
    with _$TypeMarkerRepositoryController;

abstract class _TypeMarkerRepositoryControllerBase with Store {
  final ITypeMarkerRepository _typeMarkerRepository = Modular.get();

  @observable
  TypeMarkerModel typeMarker;

  @observable
  ObservableList<TypeMarkerModel> typeMarkerList = ObservableList();

  _TypeMarkerRepositoryControllerBase() {
//    getTypeMarked();
  }

  @action
  setTypeMarker(TypeMarkerModel value) => typeMarker = value;

  @action
  Future<TypeMarkerModel> getTypeMarker(String idTypeMarker) async {
    DocumentSnapshot snapshot =
    await _typeMarkerRepository.getTypeMarker(idTypeMarker);

    Map<String, dynamic> data = snapshot.data;

    var typeMarkerLocal = TypeMarkerModel(
      idTypeMarker: snapshot.documentID,
      name: data["name"],
      icon: data["icon"],
    );
    setTypeMarker(typeMarkerLocal);

    return typeMarker;
  }

  Stream<QuerySnapshot> getTypeMarkers() {
    return _typeMarkerRepository.getTypeMarkers();
  }

  Future saveTypeMarker(TypeMarkerModel typeMarker) {
    return _typeMarkerRepository.saveTypeMarker(typeMarker);
  }
}
