import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/type_marker_model.dart';

abstract class ITypeMarkerRepository {

  Future<DocumentSnapshot> getTypeMarker(String idTypeMarker);

  Stream<QuerySnapshot> getTypeMarkers();

  Future saveTypeMarker(TypeMarkerModel typeMarker);
}
