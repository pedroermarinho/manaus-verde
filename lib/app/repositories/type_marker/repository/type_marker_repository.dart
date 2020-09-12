import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/type_marker_model.dart';

import 'interfaces/type_marker_repository_interface.dart';

part 'type_marker_repository.g.dart';

@Injectable()
class TypeMarkerRepository implements ITypeMarkerRepository {
  final Firestore _firestore = Firestore.instance;
  final String _collectionDB = "typemarkers";

  @override
  Future<DocumentSnapshot> getTypeMarker(String idTypeMarker) async{
    return await _firestore.collection(_collectionDB).document(idTypeMarker).get();
  }

  @override
  Stream<QuerySnapshot> getTypeMarkers() {
    return _firestore.collection(_collectionDB).where("").snapshots();
  }

  @override
  Future saveTypeMarker(TypeMarkerModel typeMarker) async{
    return await _firestore
        .collection(_collectionDB)
        .document(typeMarker.icon)
        .setData(typeMarker.toMap());
  }
  
}
