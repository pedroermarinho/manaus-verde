// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_repository_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MarkerRepositoryController = BindInject(
  (i) => MarkerRepositoryController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MarkerRepositoryController on _MarkerRepositoryControllerBase, Store {
  final _$markerAtom = Atom(name: '_MarkerRepositoryControllerBase.marker');

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

  final _$markerListAtom =
      Atom(name: '_MarkerRepositoryControllerBase.markerList');

  @override
  ObservableList<MarkerModel> get markerList {
    _$markerListAtom.reportRead();
    return super.markerList;
  }

  @override
  set markerList(ObservableList<MarkerModel> value) {
    _$markerListAtom.reportWrite(value, super.markerList, () {
      super.markerList = value;
    });
  }

  final _$loadingAtom = Atom(name: '_MarkerRepositoryControllerBase.loading');

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

  final _$setMarkersAsyncAction =
      AsyncAction('_MarkerRepositoryControllerBase.setMarkers');

  @override
  Future setMarkers(ObservableList<MarkerModel> value) {
    return _$setMarkersAsyncAction.run(() => super.setMarkers(value));
  }

  final _$_MarkerRepositoryControllerBaseActionController =
      ActionController(name: '_MarkerRepositoryControllerBase');

  @override
  dynamic setMarker(MarkerModel value) {
    final _$actionInfo = _$_MarkerRepositoryControllerBaseActionController
        .startAction(name: '_MarkerRepositoryControllerBase.setMarker');
    try {
      return super.setMarker(value);
    } finally {
      _$_MarkerRepositoryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
marker: ${marker},
markerList: ${markerList},
loading: ${loading}
    ''';
  }
}
