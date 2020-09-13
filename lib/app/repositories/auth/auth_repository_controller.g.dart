// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AuthRepositoryController = BindInject(
  (i) => AuthRepositoryController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthRepositoryController on _AuthRepositoryControllerBase, Store {
  Computed<Future<FirebaseUser>> _$userAuthComputed;

  @override
  Future<FirebaseUser> get userAuth => (_$userAuthComputed ??=
          Computed<Future<FirebaseUser>>(() => super.userAuth,
              name: '_AuthRepositoryControllerBase.userAuth'))
      .value;

  final _$_userAuthAtom = Atom(name: '_AuthRepositoryControllerBase._userAuth');

  @override
  FirebaseUser get _userAuth {
    _$_userAuthAtom.reportRead();
    return super._userAuth;
  }

  @override
  set _userAuth(FirebaseUser value) {
    _$_userAuthAtom.reportWrite(value, super._userAuth, () {
      super._userAuth = value;
    });
  }

  final _$statusAtom = Atom(name: '_AuthRepositoryControllerBase.status');

  @override
  AuthStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(AuthStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$_AuthRepositoryControllerBaseActionController =
      ActionController(name: '_AuthRepositoryControllerBase');

  @override
  dynamic setUser(FirebaseUser value) {
    final _$actionInfo = _$_AuthRepositoryControllerBaseActionController
        .startAction(name: '_AuthRepositoryControllerBase.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_AuthRepositoryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status},
userAuth: ${userAuth}
    ''';
  }
}
