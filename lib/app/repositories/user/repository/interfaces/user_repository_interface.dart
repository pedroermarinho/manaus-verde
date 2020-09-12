
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/user_model.dart';

abstract class IUserRepository  {
  Future<DocumentSnapshot> getUser();

  Future deleteUser();

  Future saveUser(UserModel user);

  Future<DocumentSnapshot> getUserId(String idUser);

  Future updateUser(UserModel user);

  Future registerUser(UserModel user);

  Future<StorageUploadTask> uploadImageUser(File fileImage);
}
