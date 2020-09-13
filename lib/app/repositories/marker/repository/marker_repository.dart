import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/marker_model.dart';

import 'interfaces/marker_repository_interface.dart';

part 'marker_repository.g.dart';

@Injectable()
class MarkerRepository implements IMarkerRepository {
  final Firestore _firestore = Firestore.instance;
  final String _collectionDB = "markers";

  @override
  Future deleteMarker(String idMarker) async {
    return await _firestore
        .collection(_collectionDB)
        .document(idMarker)
        .delete();
  }

  @override
  Future<DocumentSnapshot> getMarker(String idMarker) async {
    return await _firestore.collection(_collectionDB).document(idMarker).get();
  }

  @override
  Stream<QuerySnapshot> getMarkerUser(String idUser) {
    return _firestore
        .collection(_collectionDB)
        .where("id_user_creator", isEqualTo: idUser)
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getMarkers() {
    return _firestore.collection(_collectionDB).where("").snapshots();
  }

  @override
  Future saveMarker(Map marker) async {
    return await _firestore
        .collection(_collectionDB)
        .document()
        .setData(marker);
  }

  @override
  Future updateMarker(MarkerModel marker) async {
    return await _firestore
        .collection(_collectionDB)
        .document(marker.idMarker)
        .updateData(marker.toMap());
  }
}
