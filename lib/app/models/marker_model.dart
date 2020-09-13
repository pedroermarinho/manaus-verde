class MarkerModel {
  String idMarker;
  String idUserCreator;
  String title;
  String description;
  bool paper;
  bool glass;
  bool plastic;
  bool organic;
  bool electronic;
  double latitude;

  MarkerModel({
    this.idMarker,
    this.idUserCreator,
    this.title,
    this.description,
    this.paper,
    this.glass,
    this.plastic,
    this.organic,
    this.electronic,
    this.latitude,
    this.longitude,
  });

  double longitude;

  factory MarkerModel.fromJson(Map<String, dynamic> json) {
    return MarkerModel(
      //field: json[''],
      idMarker: json['id_marker'],
      idUserCreator: json['id_user_creator'],
      title: json['title'],
      description: json['description'],
      paper: json['paper'],
      glass: json['glass'],
      plastic: json['plastic'],
      organic: json['organic'],
      electronic: json['electronic'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "id_user_creator": idUserCreator,
      "title": title,
      "description": description,
      "paper": paper,
      "glass": glass,
      "plastic": plastic,
      "organic": organic,
      "electronic": electronic,
      "latitude": latitude,
      "longitude": longitude
    };
    return map;
  }
}
