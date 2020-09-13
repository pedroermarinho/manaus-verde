import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/stars_model.dart';
import 'package:manaus_verde/app/repositories/auth/auth_repository_controller.dart';
// import 'package:manaus_verde/app/shared/auth/auth_repository_controller.dart';

import 'interfaces/stars_repository_interface.dart';

class StarsRepository implements IStarsRepository {
  final Firestore _firestore = Firestore.instance;
  final String _collectionDB = "stars";
  final _authController = Modular.get<AuthRepositoryController>();

  @override
  deleteAllStars(String idMarker) {
    _firestore
        .collection(_collectionDB)
        .where("id_marker", isEqualTo: idMarker)
        .snapshots()
        .listen((event) {
      event.documents.forEach((element) {
        deleteStars(element.data["id_stars"]);
      },);
    },);
  }

  @override
  Future deleteStars(String idStars) async {
    return await _firestore.collection(_collectionDB).document(idStars).delete();
  }

  @override
  Stream<QuerySnapshot> getStars(String idMarker) {
    return  _firestore
        .collection(_collectionDB)
        .where("id_marker", isEqualTo: idMarker)
        .snapshots();
  }

  @override
  Future<DocumentSnapshot> getStarsUser(String idMarker) async{
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(idMarker + userAuth.uid)
        .get();
  }

  @override
  Future saveStars(StarsModel stars) async{
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(stars.idMarker + userAuth.uid)
        .setData(stars.toMap());
  }

  @override
  Future updateStars(StarsModel stars) async{
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(stars.idMarker + userAuth.uid)
        .updateData(stars.toMap());
  }
}
