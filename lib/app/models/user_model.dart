class UserModel {
  String idUser;
  String name;
  String email;
  String password;
  String userType;
  String pathPhoto;

  UserModel({
    this.idUser,
    this.name,
    this.email,
    this.password,
    this.userType,
    this.pathPhoto,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      //field: json[''],
      idUser: json['id_user'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      userType: json['user_type'],
      pathPhoto: json['path_photo'],
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "name": name,
      "email": email,
      "user_type": userType,
      "path_photo": pathPhoto
    };
    return map;
  }
}
