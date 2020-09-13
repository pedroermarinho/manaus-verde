// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MarkerController on _MarkerControllerBase, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_MarkerControllerBase.isValid'))
      .value;

  final _$nameAtom = Atom(name: '_MarkerControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_MarkerControllerBase.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$paperAtom = Atom(name: '_MarkerControllerBase.paper');

  @override
  bool get paper {
    _$paperAtom.reportRead();
    return super.paper;
  }

  @override
  set paper(bool value) {
    _$paperAtom.reportWrite(value, super.paper, () {
      super.paper = value;
    });
  }

  final _$glassAtom = Atom(name: '_MarkerControllerBase.glass');

  @override
  bool get glass {
    _$glassAtom.reportRead();
    return super.glass;
  }

  @override
  set glass(bool value) {
    _$glassAtom.reportWrite(value, super.glass, () {
      super.glass = value;
    });
  }

  final _$plasticAtom = Atom(name: '_MarkerControllerBase.plastic');

  @override
  bool get plastic {
    _$plasticAtom.reportRead();
    return super.plastic;
  }

  @override
  set plastic(bool value) {
    _$plasticAtom.reportWrite(value, super.plastic, () {
      super.plastic = value;
    });
  }

  final _$organicAtom = Atom(name: '_MarkerControllerBase.organic');

  @override
  bool get organic {
    _$organicAtom.reportRead();
    return super.organic;
  }

  @override
  set organic(bool value) {
    _$organicAtom.reportWrite(value, super.organic, () {
      super.organic = value;
    });
  }

  final _$electronicAtom = Atom(name: '_MarkerControllerBase.electronic');

  @override
  bool get electronic {
    _$electronicAtom.reportRead();
    return super.electronic;
  }

  @override
  set electronic(bool value) {
    _$electronicAtom.reportWrite(value, super.electronic, () {
      super.electronic = value;
    });
  }

  final _$markerAtom = Atom(name: '_MarkerControllerBase.marker');

  @override
  MarkerModel get marker {
    _$markerAtom.reportRead();
    return super.marker;
  }

  @override
  set marker(MarkerModel value) {
    _$markerAtom.reportWrite(value, super.marker, () {
      super.marker = value;
    });
  }

  final _$messageErrorAtom = Atom(name: '_MarkerControllerBase.messageError');

  @override
  String get messageError {
    _$messageErrorAtom.reportRead();
    return super.messageError;
  }

  @override
  set messageError(String value) {
    _$messageErrorAtom.reportWrite(value, super.messageError, () {
      super.messageError = value;
    });
  }

  final _$loadingAtom = Atom(name: '_MarkerControllerBase.loading');

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

  final _$positionAtom = Atom(name: '_MarkerControllerBase.position');

  @override
  Position get position {
    _$positionAtom.reportRead();
    return super.position;
  }

  @override
  set position(Position value) {
    _$positionAtom.reportWrite(value, super.position, () {
      super.position = value;
    });
  }

  final _$_MarkerControllerBaseActionController =
      ActionController(name: '_MarkerControllerBase');

  @override
  dynamic setPaper(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setPaper');
    try {
      return super.setPaper(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setGlass(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setGlass');
    try {
      return super.setGlass(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPlastic(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setPlastic');
    try {
      return super.setPlastic(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOrganic(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setOrganic');
    try {
      return super.setOrganic(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setElectronic(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setElectronic');
    try {
      return super.setElectronic(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescription(String value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setMarker(MarkerModel value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setMarker');
    try {
      return super.setMarker(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPosition(Position value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setPosition');
    try {
      return super.setPosition(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
description: ${description},
paper: ${paper},
glass: ${glass},
plastic: ${plastic},
organic: ${organic},
electronic: ${electronic},
marker: ${marker},
messageError: ${messageError},
loading: ${loading},
position: ${position},
isValid: ${isValid}
    ''';
  }
}
