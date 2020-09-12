class TypeMarkerModel {
  String idTypeMarker;
  String name;
  String icon;

  TypeMarkerModel({
    this.idTypeMarker,
    this.name,
    this.icon,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "name": name,
      "icon": icon,
    };
    return map;
  }
}
