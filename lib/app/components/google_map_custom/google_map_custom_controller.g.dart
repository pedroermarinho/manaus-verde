// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_map_custom_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GoogleMapCustomController on _GoogleMapCustomControllerBase, Store {
  final _$googleMapCompleterAtom =
      Atom(name: '_GoogleMapCustomControllerBase.googleMapCompleter');

  @override
  Completer<GoogleMapController> get googleMapCompleter {
    _$googleMapCompleterAtom.reportRead();
    return super.googleMapCompleter;
  }

  @override
  set googleMapCompleter(Completer<GoogleMapController> value) {
    _$googleMapCompleterAtom.reportWrite(value, super.googleMapCompleter, () {
      super.googleMapCompleter = value;
    });
  }

  final _$markersAtom = Atom(name: '_GoogleMapCustomControllerBase.markers');

  @override
  ObservableMap<String, Marker> get markers {
    _$markersAtom.reportRead();
    return super.markers;
  }

  @override
  set markers(ObservableMap<String, Marker> value) {
    _$markersAtom.reportWrite(value, super.markers, () {
      super.markers = value;
    });
  }

  final _$locationMarkerAtom =
      Atom(name: '_GoogleMapCustomControllerBase.locationMarker');

  @override
  Position get locationMarker {
    _$locationMarkerAtom.reportRead();
    return super.locationMarker;
  }

  @override
  set locationMarker(Position value) {
    _$locationMarkerAtom.reportWrite(value, super.locationMarker, () {
      super.locationMarker = value;
    });
  }

  final _$positionActualAtom =
      Atom(name: '_GoogleMapCustomControllerBase.positionActual');

  @override
  Position get positionActual {
    _$positionActualAtom.reportRead();
    return super.positionActual;
  }

  @override
  set positionActual(Position value) {
    _$positionActualAtom.reportWrite(value, super.positionActual, () {
      super.positionActual = value;
    });
  }

  final _$latLngActualAtom =
      Atom(name: '_GoogleMapCustomControllerBase.latLngActual');

  @override
  LatLng get latLngActual {
    _$latLngActualAtom.reportRead();
    return super.latLngActual;
  }

  @override
  set latLngActual(LatLng value) {
    _$latLngActualAtom.reportWrite(value, super.latLngActual, () {
      super.latLngActual = value;
    });
  }

  final _$latLngMarkerActualAtom =
      Atom(name: '_GoogleMapCustomControllerBase.latLngMarkerActual');

  @override
  Observable<LatLng> get latLngMarkerActual {
    _$latLngMarkerActualAtom.reportRead();
    return super.latLngMarkerActual;
  }

  @override
  set latLngMarkerActual(Observable<LatLng> value) {
    _$latLngMarkerActualAtom.reportWrite(value, super.latLngMarkerActual, () {
      super.latLngMarkerActual = value;
    });
  }

  final _$contextAtom = Atom(name: '_GoogleMapCustomControllerBase.context');

  @override
  BuildContext get context {
    _$contextAtom.reportRead();
    return super.context;
  }

  @override
  set context(BuildContext value) {
    _$contextAtom.reportWrite(value, super.context, () {
      super.context = value;
    });
  }

  final _$cameraPositionAtom =
      Atom(name: '_GoogleMapCustomControllerBase.cameraPosition');

  @override
  CameraPosition get cameraPosition {
    _$cameraPositionAtom.reportRead();
    return super.cameraPosition;
  }

  @override
  set cameraPosition(CameraPosition value) {
    _$cameraPositionAtom.reportWrite(value, super.cameraPosition, () {
      super.cameraPosition = value;
    });
  }

  final _$viewMarkerAsyncAction =
      AsyncAction('_GoogleMapCustomControllerBase.viewMarker');

  @override
  Future viewMarker(MarkerModel marker) {
    return _$viewMarkerAsyncAction.run(() => super.viewMarker(marker));
  }

  final _$showMarkerLocationAsyncAction =
      AsyncAction('_GoogleMapCustomControllerBase.showMarkerLocation');

  @override
  Future showMarkerLocation(Position position) {
    return _$showMarkerLocationAsyncAction
        .run(() => super.showMarkerLocation(position));
  }

  final _$_GoogleMapCustomControllerBaseActionController =
      ActionController(name: '_GoogleMapCustomControllerBase');

  @override
  dynamic setPositionActual(Position value) {
    final _$actionInfo = _$_GoogleMapCustomControllerBaseActionController
        .startAction(name: '_GoogleMapCustomControllerBase.setPositionActual');
    try {
      return super.setPositionActual(value);
    } finally {
      _$_GoogleMapCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLatLngActual(LatLng value) {
    final _$actionInfo = _$_GoogleMapCustomControllerBaseActionController
        .startAction(name: '_GoogleMapCustomControllerBase.setLatLngActual');
    try {
      return super.setLatLngActual(value);
    } finally {
      _$_GoogleMapCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLatLngMarkerActual(LatLng value) {
    final _$actionInfo =
        _$_GoogleMapCustomControllerBaseActionController.startAction(
            name: '_GoogleMapCustomControllerBase.setLatLngMarkerActual');
    try {
      return super.setLatLngMarkerActual(value);
    } finally {
      _$_GoogleMapCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCameraPosition(Position value) {
    final _$actionInfo = _$_GoogleMapCustomControllerBaseActionController
        .startAction(name: '_GoogleMapCustomControllerBase.setCameraPosition');
    try {
      return super.setCameraPosition(value);
    } finally {
      _$_GoogleMapCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setMarkers(Marker value) {
    final _$actionInfo = _$_GoogleMapCustomControllerBaseActionController
        .startAction(name: '_GoogleMapCustomControllerBase.setMarkers');
    try {
      return super.setMarkers(value);
    } finally {
      _$_GoogleMapCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onMapCreated(GoogleMapController googleMapController) {
    final _$actionInfo = _$_GoogleMapCustomControllerBaseActionController
        .startAction(name: '_GoogleMapCustomControllerBase.onMapCreated');
    try {
      return super.onMapCreated(googleMapController);
    } finally {
      _$_GoogleMapCustomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
googleMapCompleter: ${googleMapCompleter},
markers: ${markers},
locationMarker: ${locationMarker},
positionActual: ${positionActual},
latLngActual: ${latLngActual},
latLngMarkerActual: ${latLngMarkerActual},
context: ${context},
cameraPosition: ${cameraPosition}
    ''';
  }
}
