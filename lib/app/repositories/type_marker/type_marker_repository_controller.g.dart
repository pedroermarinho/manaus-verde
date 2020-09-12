// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_marker_repository_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TypeMarkerRepositoryController = BindInject(
  (i) => TypeMarkerRepositoryController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TypeMarkerRepositoryController
    on _TypeMarkerRepositoryControllerBase, Store {
  final _$typeMarkerAtom =
      Atom(name: '_TypeMarkerRepositoryControllerBase.typeMarker');

  @override
  TypeMarkerModel get typeMarker {
    _$typeMarkerAtom.reportRead();
    return super.typeMarker;
  }

  @override
  set typeMarker(TypeMarkerModel value) {
    _$typeMarkerAtom.reportWrite(value, super.typeMarker, () {
      super.typeMarker = value;
    });
  }

  final _$typeMarkerListAtom =
      Atom(name: '_TypeMarkerRepositoryControllerBase.typeMarkerList');

  @override
  ObservableList<TypeMarkerModel> get typeMarkerList {
    _$typeMarkerListAtom.reportRead();
    return super.typeMarkerList;
  }

  @override
  set typeMarkerList(ObservableList<TypeMarkerModel> value) {
    _$typeMarkerListAtom.reportWrite(value, super.typeMarkerList, () {
      super.typeMarkerList = value;
    });
  }

  final _$getTypeMarkerAsyncAction =
      AsyncAction('_TypeMarkerRepositoryControllerBase.getTypeMarker');

  @override
  Future<TypeMarkerModel> getTypeMarker(String idTypeMarker) {
    return _$getTypeMarkerAsyncAction
        .run(() => super.getTypeMarker(idTypeMarker));
  }

  final _$_TypeMarkerRepositoryControllerBaseActionController =
      ActionController(name: '_TypeMarkerRepositoryControllerBase');

  @override
  dynamic setTypeMarker(TypeMarkerModel value) {
    final _$actionInfo = _$_TypeMarkerRepositoryControllerBaseActionController
        .startAction(name: '_TypeMarkerRepositoryControllerBase.setTypeMarker');
    try {
      return super.setTypeMarker(value);
    } finally {
      _$_TypeMarkerRepositoryControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
typeMarker: ${typeMarker},
typeMarkerList: ${typeMarkerList}
    ''';
  }
}
