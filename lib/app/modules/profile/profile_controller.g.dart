// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileController on _ProfileControllerBase, Store {
  final _$userAtom = Atom(name: '_ProfileControllerBase.user');

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

  final _$loadingAtom = Atom(name: '_ProfileControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$markersLengthAtom =
      Atom(name: '_ProfileControllerBase.markersLength');

  @override
  int get markersLength {
    _$markersLengthAtom.reportRead();
    return super.markersLength;
  }

  @override
  set markersLength(int value) {
    _$markersLengthAtom.reportWrite(value, super.markersLength, () {
      super.markersLength = value;
    });
  }

  final _$getUserAsyncAction = AsyncAction('_ProfileControllerBase.getUser');

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  @override
  String toString() {
    return '''
user: ${user},
loading: ${loading},
markersLength: ${markersLength}
    ''';
  }
}
