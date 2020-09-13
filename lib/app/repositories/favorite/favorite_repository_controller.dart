import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/favorite_model.dart';
import 'package:manaus_verde/app/repositories/favorite/repository/interfaces/favorite_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'favorite_repository_controller.g.dart';

@Injectable()
class FavoriteRepositoryController = _FavoriteRepositoryControllerBase
    with _$FavoriteRepositoryController;

abstract class _FavoriteRepositoryControllerBase with Store {
  final _favoriteRepository = Modular.get<IFavoriteRepository>();

  /// Retorna o favorito com a relação entre usuario e marcador
  ///
  /// usado para saber se o usuario favoritou ou não um marcador
  Future<FavoriteModel> getFavoriteMarker(String idMarker) async {
    final documentSnapshot =
        await _favoriteRepository.getFavoriteMarker(idMarker);
    if (documentSnapshot.data != null) {
      final data = documentSnapshot.data;

      final favorite = FavoriteModel.fromJson(data);
      favorite.idFavorite = documentSnapshot.documentID;
      return favorite;
    } else {
      return null;
    }
  }

  /// Retorna todos os favoritos de um marcador
  ///
  /// usado para contabilizar a quantidades de favoritos um marcador tem
  Future<List<FavoriteModel>> getFavoriteMarkers(String idMarker) async {
    List<FavoriteModel> listFavorite = List();
    final listQuerySnapshot =
        await _favoriteRepository.getFavoriteMarkers(idMarker).toList();

    for (var querySnapshot in listQuerySnapshot) {
      for (var documents in querySnapshot.documents) {
        final Map<String, dynamic> data = documents.data;

        final favorite = FavoriteModel.fromJson(data);
        favorite.idFavorite = documents.documentID;

        listFavorite.add(favorite);
      }
    }
    return listFavorite;
  }

  /// Retornas todos os favoritos do usuario
  Future<Stream<QuerySnapshot>> getFavoritesUser() async {
    return _favoriteRepository.getFavoritesUser();
  }

  /// Deleta um favorito
  Future deleteFavoriteMarker(String idMarker) {
    return _favoriteRepository.deleteFavoriteMarker(idMarker);
  }

  /// Salva um novo favorito
  Future saveFavoriteMarker(String idMarker) {
    return _favoriteRepository.saveFavoriteMarker(idMarker);
  }
}
