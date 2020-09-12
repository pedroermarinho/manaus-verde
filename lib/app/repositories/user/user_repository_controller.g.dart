// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_repository_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $UserRepositoryController = BindInject(
  (i) => UserRepositoryController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserRepositoryController on _UserRepositoryControllerBase, Store {
  final _$userAtom = Atom(name: '_UserRepositoryControllerBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$_UserRepositoryControllerBaseActionController =
      ActionController(name: '_UserRepositoryControllerBase');

  @override
  dynamic setUser(UserModel value) {
    final _$actionInfo = _$_UserRepositoryControllerBaseActionController
        .startAction(name: '_UserRepositoryControllerBase.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_UserRepositoryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
