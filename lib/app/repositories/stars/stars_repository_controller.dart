import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/stars_model.dart';
import 'package:mobx/mobx.dart';

import 'repository/interfaces/stars_repository_interface.dart';

part 'stars_repository_controller.g.dart';

class StarsRepositoryController = _StarsRepositoryControllerBase
    with _$StarsRepositoryController;

abstract class _StarsRepositoryControllerBase with Store {
  final _starsRepository = Modular.get<IStarsRepository>();

  /// Estrelas do Marcador
  ///
  /// A busca é feita atraves do id do marcador e do usuario
  Future<StarsModel> getStarsUser(String idMarker) async {
    var results = await _starsRepository.getStarsUser(idMarker);
    if (results?.data != null) {
      final data = results.data;
      StarsModel stars = StarsModel.fromJson(data);
      stars.idStars =results.documentID;

      return stars;
    } else {
      return null;
    }
  }

  Stream<QuerySnapshot> getStars(String idMarker) {
    return _starsRepository.getStars(idMarker);
  }

  /// Salvar novo comentario
  ///
  /// A ação é feita atravez de um instacia do objeto
  Future saveStars(StarsModel stars) {
    return _starsRepository.saveStars(stars);
  }

  /// Atualizar estrelas
  ///
  /// A ação é feita atravez de um instacia do objeto
  Future updateStars(StarsModel stars) {
    return _starsRepository.updateStars(stars);
  }

  /// Deletar um comentario
  ///
  /// A ação é feita atravez de um instacia do objeto
  Future deleteStars(StarsModel stars) {
    return _starsRepository.deleteStars(stars.idStars);
  }

  /// Deletar todos comentarios
  ///
  /// A ação é feita atravez do id do Marcador
  Future deleteAllStars(String idMarker) {
    return _starsRepository.deleteAllStars(idMarker);
  }
}
