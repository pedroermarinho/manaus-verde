import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/favorite_model.dart';
import 'package:manaus_verde/app/repositories/auth/auth_repository_controller.dart';

import 'interfaces/favorite_repository_interface.dart';

part 'favorite_repository.g.dart';

@Injectable()
class FavoriteRepository implements IFavoriteRepository {
  final Firestore _firestore = Firestore.instance;
  final String _collectionDB = "favorite";
  final AuthRepositoryController _authController = Modular.get();
  @override
  Future deleteFavoriteMarker(String idMarker) async{
    return await _firestore
        .collection(_collectionDB)
        .document(idMarker + _authController.userAuth.uid)
        .delete();
  }

  @override
  Future<DocumentSnapshot> getFavoriteMarker(String idMarker)async {
    return await _firestore
        .collection(_collectionDB)
        .document(idMarker + _authController.userAuth.uid)
        .get();
  }

  @override
  Stream<QuerySnapshot> getFavoriteMarkers(String idMarker) {
    return _firestore
        .collection(_collectionDB)
        .where("idMarker", isEqualTo: idMarker)
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getFavoritesUser() {
    return _firestore
        .collection(_collectionDB)
        .where("idUser", isEqualTo: _authController.userAuth.uid)
        .snapshots();
  }

  @override
  Future saveFavoriteMarker(String idMarker) async{
    FavoriteModel favoriteModel = FavoriteModel(
      idMarker: idMarker,
      idUser: _authController.userAuth.uid,
    );
    return await _firestore
        .collection(_collectionDB)
        .document(idMarker + _authController.userAuth.uid)
        .setData(favoriteModel.toMap());
  }
  
}
