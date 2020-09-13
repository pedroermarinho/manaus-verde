class CommentModel {
  String idComment;
  String idUser;
  String idMarker;
  String comment;
  DateTime dateTime;

  CommentModel({
    this.idComment,
    this.idUser,
    this.idMarker,
    this.comment,
    this.dateTime,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      //field: json[''],
     idComment: json['id_comment'],
     idUser: json['id_user'],
     idMarker: json['id_marker'],
     comment: json['comment'],
     dateTime: json['date_time'],
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "id_user": idUser,
      "id_marker": idMarker,
      "comment": comment,
      "date_time": dateTime
    };
    return map;
  }
}
