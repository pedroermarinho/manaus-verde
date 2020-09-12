import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:manaus_verde/app/models/user_model.dart';
import 'package:manaus_verde/app/repositories/auth/auth_repository_controller.dart';
import 'package:manaus_verde/app/repositories/user/repository/interfaces/user_repository_interface.dart';
import 'package:manaus_verde/app/shared/utils/user_util.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'user_repository_controller.g.dart';

@Injectable()
class UserRepositoryController = _UserRepositoryControllerBase
    with _$UserRepositoryController;

abstract class _UserRepositoryControllerBase with Store {
  final _userRepository = Modular.get<IUserRepository>();
  final _authController = Modular.get<AuthRepositoryController>();

  @observable
  UserModel user;

  @action
  setUser(UserModel value) => user = value;

  _UserRepositoryControllerBase() {
    getUser();
  }

  Future deleteUser() {
    return _userRepository.deleteUser();
  }

  // ignore: missing_return
  Future<UserModel> getUser() async {
    if (_authController.status == AuthStatus.login) {
      DocumentSnapshot snapshot = await _userRepository.getUser();
      Map<String, dynamic> data = snapshot.data;
      if (data.isNotEmpty) {
        UserModel userLocal = UserModel(
          idUser: snapshot.documentID,
          name: data["name"],
          email: data["email"],
          userType: data["userType"],
          pathPhoto: data["pathPhoto"],
        );
        setUser(userLocal);
        return user;
      }
    } else {
      return null;
    }
  }

  Future<UserModel> getUserId(String idUser) async {
    DocumentSnapshot snapshot = await _userRepository.getUserId(idUser);
    Map<String, dynamic> data = snapshot.data;
    if (data.isNotEmpty) {
      UserModel userLocal = UserModel(
        idUser: snapshot.documentID,
        name: data["name"],
        email: data["email"],
        userType: data["userType"],
        pathPhoto: data["pathPhoto"],
      );
      return userLocal;
    } else {
      return null;
    }
  }

  Future saveUser() {
    return _userRepository.saveUser(user);
  }

  Future updateUser() {
    return _userRepository.updateUser(user);
  }

  Future registerUser() {
    return _userRepository.registerUser(user);
  }

  Future<StorageUploadTask> uploadImageUser(File fileImage) {
    return _userRepository.uploadImageUser(fileImage);
  }
}
