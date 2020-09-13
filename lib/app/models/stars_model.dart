class StarsModel {
  String idStars;
  String idUser;
  String idMarker;
  int stars;

  StarsModel({
    this.idStars,
    this.idUser,
    this.idMarker,
    this.stars,
  });

  factory StarsModel.fromJson(Map<String, dynamic> json) {
    return StarsModel(
      //field: json[''],
      idStars: json['id_stars'],
      idUser: json['id_user'],
      idMarker: json['id_marker'],
      stars: json['stars'],

    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "id_user": idUser,
      "id_marker": idMarker,
      "stars": stars,
    };
    return map;
  }
}
