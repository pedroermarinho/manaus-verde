import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:manaus_verde/app/models/user_model.dart';
import 'package:manaus_verde/app/repositories/auth/auth_repository_controller.dart';
import 'package:manaus_verde/app/shared/utils/img.dart';

import 'interfaces/user_repository_interface.dart';

part 'user_repository.g.dart';

@Injectable()
class UserRepository implements IUserRepository {
  final Firestore _firestore = Firestore.instance;
  final String _collectionDB = "users";
  final String _childProfileUser = "profiles";
  final AuthRepositoryController _authController = Modular.get();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  @override
  Future deleteUser() async {
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(userAuth.uid)
        .delete();
  }

  @override
  Future<DocumentSnapshot> getUser() async {
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(userAuth.uid)
        .get();
  }

  @override
  Future<DocumentSnapshot> getUserId(String idUser) async {
    return await _firestore.collection(_collectionDB).document(idUser).get();
  }

  @override
  Future registerUser(UserModel user) async {
    return await _firebaseAuth
        .createUserWithEmailAndPassword(
            email: user.email, password: user.password)
        .then((value) {
      _firestore
          .collection(_collectionDB)
          .document(value.user.uid)
          .setData(user.toMap());
    });
  }

  @override
  Future saveUser(UserModel user) async {
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(userAuth.uid)
        .setData(user.toMap());
  }

  @override
  Future updateUser(UserModel user) async {
    final userAuth = await _authController.userAuth;
    return await _firestore
        .collection(_collectionDB)
        .document(userAuth.uid)
        .updateData(user.toMap());
  }

  @override
  Future<StorageUploadTask> uploadImageUser(File fileImage) async {
    final userAuth = await _authController.userAuth;
    File image = await compressImage(fileImage);

    StorageReference pastaRaiz = _storage.ref();
    StorageReference arquivo =
        pastaRaiz.child(_childProfileUser).child(userAuth.uid + ".jpg");

    StorageUploadTask task = arquivo.putFile(image);

    task.events.listen((StorageTaskEvent storageTaskEvent) {
      if (storageTaskEvent.type == StorageTaskEventType.success) {}
    });

    task.onComplete.then(_recoverUrlImage);

    return task;
  }

  _recoverUrlImage(StorageTaskSnapshot snapshot) async {
    final userAuth = await _authController.userAuth;
    String downloadURL = await snapshot.ref.getDownloadURL();
    _firestore
        .collection(_collectionDB)
        .document(userAuth.uid)
        .updateData({"path_photo": downloadURL});
  }
}
