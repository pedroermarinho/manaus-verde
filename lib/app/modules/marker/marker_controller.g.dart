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

  final _$dmAtom = Atom(name: '_MarkerControllerBase.dm');

  @override
  bool get dm {
    _$dmAtom.reportRead();
    return super.dm;
  }

  @override
  set dm(bool value) {
    _$dmAtom.reportWrite(value, super.dm, () {
      super.dm = value;
    });
  }

  final _$dvAtom = Atom(name: '_MarkerControllerBase.dv');

  @override
  bool get dv {
    _$dvAtom.reportRead();
    return super.dv;
  }

  @override
  set dv(bool value) {
    _$dvAtom.reportWrite(value, super.dv, () {
      super.dv = value;
    });
  }

  final _$daAtom = Atom(name: '_MarkerControllerBase.da');

  @override
  bool get da {
    _$daAtom.reportRead();
    return super.da;
  }

  @override
  set da(bool value) {
    _$daAtom.reportWrite(value, super.da, () {
      super.da = value;
    });
  }

  final _$diAtom = Atom(name: '_MarkerControllerBase.di');

  @override
  bool get di {
    _$diAtom.reportRead();
    return super.di;
  }

  @override
  set di(bool value) {
    _$diAtom.reportWrite(value, super.di, () {
      super.di = value;
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

  final _$selectedMarkerAtom =
      Atom(name: '_MarkerControllerBase.selectedMarker');

  @override
  TypeMarkerModel get selectedMarker {
    _$selectedMarkerAtom.reportRead();
    return super.selectedMarker;
  }

  @override
  set selectedMarker(TypeMarkerModel value) {
    _$selectedMarkerAtom.reportWrite(value, super.selectedMarker, () {
      super.selectedMarker = value;
    });
  }

  final _$dropdownMenuItemsAtom =
      Atom(name: '_MarkerControllerBase.dropdownMenuItems');

  @override
  ObservableList<DropdownMenuItem<TypeMarkerModel>> get dropdownMenuItems {
    _$dropdownMenuItemsAtom.reportRead();
    return super.dropdownMenuItems;
  }

  @override
  set dropdownMenuItems(
      ObservableList<DropdownMenuItem<TypeMarkerModel>> value) {
    _$dropdownMenuItemsAtom.reportWrite(value, super.dropdownMenuItems, () {
      super.dropdownMenuItems = value;
    });
  }

  final _$dropdownMenuValueAtom =
      Atom(name: '_MarkerControllerBase.dropdownMenuValue');

  @override
  DropdownMenuItem<TypeMarkerModel> get dropdownMenuValue {
    _$dropdownMenuValueAtom.reportRead();
    return super.dropdownMenuValue;
  }

  @override
  set dropdownMenuValue(DropdownMenuItem<TypeMarkerModel> value) {
    _$dropdownMenuValueAtom.reportWrite(value, super.dropdownMenuValue, () {
      super.dropdownMenuValue = value;
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
  dynamic setDm(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setDm');
    try {
      return super.setDm(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDv(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setDv');
    try {
      return super.setDv(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDa(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setDa');
    try {
      return super.setDa(value);
    } finally {
      _$_MarkerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDi(bool value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setDi');
    try {
      return super.setDi(value);
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
  dynamic setDescrcao(String value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setDescrcao');
    try {
      return super.setDescrcao(value);
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
  dynamic setSelectedMarker(TypeMarkerModel value) {
    final _$actionInfo = _$_MarkerControllerBaseActionController.startAction(
        name: '_MarkerControllerBase.setSelectedMarker');
    try {
      return super.setSelectedMarker(value);
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
dm: ${dm},
dv: ${dv},
da: ${da},
di: ${di},
marker: ${marker},
selectedMarker: ${selectedMarker},
dropdownMenuItems: ${dropdownMenuItems},
dropdownMenuValue: ${dropdownMenuValue},
messageError: ${messageError},
loading: ${loading},
position: ${position},
isValid: ${isValid}
    ''';
  }
}
