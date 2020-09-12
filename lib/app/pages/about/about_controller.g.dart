// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AboutController = BindInject(
  (i) => AboutController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AboutController on _AboutControllerBase, Store {
  final _$appNameAtom = Atom(name: '_AboutControllerBase.appName');

  @override
  String get appName {
    _$appNameAtom.reportRead();
    return super.appName;
  }

  @override
  set appName(String value) {
    _$appNameAtom.reportWrite(value, super.appName, () {
      super.appName = value;
    });
  }

  final _$packageNameAtom = Atom(name: '_AboutControllerBase.packageName');

  @override
  String get packageName {
    _$packageNameAtom.reportRead();
    return super.packageName;
  }

  @override
  set packageName(String value) {
    _$packageNameAtom.reportWrite(value, super.packageName, () {
      super.packageName = value;
    });
  }

  final _$versionAtom = Atom(name: '_AboutControllerBase.version');

  @override
  String get version {
    _$versionAtom.reportRead();
    return super.version;
  }

  @override
  set version(String value) {
    _$versionAtom.reportWrite(value, super.version, () {
      super.version = value;
    });
  }

  final _$buildNumberAtom = Atom(name: '_AboutControllerBase.buildNumber');

  @override
  String get buildNumber {
    _$buildNumberAtom.reportRead();
    return super.buildNumber;
  }

  @override
  set buildNumber(String value) {
    _$buildNumberAtom.reportWrite(value, super.buildNumber, () {
      super.buildNumber = value;
    });
  }

  final _$nameDevelopAtom = Atom(name: '_AboutControllerBase.nameDevelop');

  @override
  String get nameDevelop {
    _$nameDevelopAtom.reportRead();
    return super.nameDevelop;
  }

  @override
  set nameDevelop(String value) {
    _$nameDevelopAtom.reportWrite(value, super.nameDevelop, () {
      super.nameDevelop = value;
    });
  }

  final _$recoverInformationAsyncAction =
      AsyncAction('_AboutControllerBase.recoverInformation');

  @override
  Future recoverInformation() {
    return _$recoverInformationAsyncAction
        .run(() => super.recoverInformation());
  }

  @override
  String toString() {
    return '''
appName: ${appName},
packageName: ${packageName},
version: ${version},
buildNumber: ${buildNumber},
nameDevelop: ${nameDevelop}
    ''';
  }
}
