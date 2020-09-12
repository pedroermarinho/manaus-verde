import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/marker_model.dart';

abstract class IMarkerRepository {
  Future<DocumentSnapshot> getMarker(String idMarker);

  Stream<QuerySnapshot> getMarkers();

  Stream<QuerySnapshot> getMarkerUser(String idUser);

  Future deleteMarker(String idMarker);

  Future saveMarker(Map marker);

  Future updateMarker(MarkerModel marker);
}
