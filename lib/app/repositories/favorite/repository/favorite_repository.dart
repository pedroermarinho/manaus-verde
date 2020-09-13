import 'package:cloud_firestore/cloud_firestore.dart';
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
  Future deleteFavoriteMarker(String idMarker) async {
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(idMarker + userAuth.uid)
        .delete();
  }

  @override
  Future<DocumentSnapshot> getFavoriteMarker(String idMarker) async {
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(idMarker + userAuth.uid)
        .get();
  }

  @override
  Stream<QuerySnapshot> getFavoriteMarkers(String idMarker) {
    return _firestore
        .collection(_collectionDB)
        .where("id_marker", isEqualTo: idMarker)
        .snapshots();
  }

  @override
  Future<Stream<QuerySnapshot>> getFavoritesUser() async {
    final userAuth = await _authController.userAuth;
    return _firestore
        .collection(_collectionDB)
        .where("id_user", isEqualTo: userAuth.uid)
        .snapshots();
  }

  @override
  Future saveFavoriteMarker(String idMarker) async {
    final userAuth = await _authController.userAuth;
    FavoriteModel favoriteModel = FavoriteModel(
      idMarker: idMarker,
      idUser: userAuth.uid,
    );
    return await _firestore
        .collection(_collectionDB)
        .document(idMarker + userAuth.uid)
        .setData(favoriteModel.toMap());
  }
}
