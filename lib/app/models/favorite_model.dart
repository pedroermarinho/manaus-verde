class FavoriteModel {
  String idFavorite;
  String idUser;
  String idMarker;

  FavoriteModel({
    this.idFavorite,
    this.idUser,
    this.idMarker,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) {
    return FavoriteModel(
      //field: json[''],
      idFavorite: json['id_favorite'],
      idUser: json['id_user'],
      idMarker: json['id_marker'],
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "id_user": idUser,
      "id_marker": idMarker,
    };
    return map;
  }
}
