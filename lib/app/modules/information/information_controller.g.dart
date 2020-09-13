// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InformationController on _InformationControllerBase, Store {
  final _$userMarkerAtom = Atom(name: '_InformationControllerBase.userMarker');

  @override
  UserModel get userMarker {
    _$userMarkerAtom.reportRead();
    return super.userMarker;
  }

  @override
  set userMarker(UserModel value) {
    _$userMarkerAtom.reportWrite(value, super.userMarker, () {
      super.userMarker = value;
    });
  }

  final _$markerAtom = Atom(name: '_InformationControllerBase.marker');

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

  final _$itemsMenuAtom = Atom(name: '_InformationControllerBase.itemsMenu');

  @override
  List<String> get itemsMenu {
    _$itemsMenuAtom.reportRead();
    return super.itemsMenu;
  }

  @override
  set itemsMenu(List<String> value) {
    _$itemsMenuAtom.reportWrite(value, super.itemsMenu, () {
      super.itemsMenu = value;
    });
  }

  final _$favoriteAtom = Atom(name: '_InformationControllerBase.favorite');

  @override
  FavoriteModel get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(FavoriteModel value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  final _$iconsAssListAtom =
      Atom(name: '_InformationControllerBase.iconsAssList');

  @override
  ObservableList<Widget> get iconsAssList {
    _$iconsAssListAtom.reportRead();
    return super.iconsAssList;
  }

  @override
  set iconsAssList(ObservableList<Widget> value) {
    _$iconsAssListAtom.reportWrite(value, super.iconsAssList, () {
      super.iconsAssList = value;
    });
  }

  final _$loadingAtom = Atom(name: '_InformationControllerBase.loading');

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

  final _$placemarkAtom = Atom(name: '_InformationControllerBase.placemark');

  @override
  Placemark get placemark {
    _$placemarkAtom.reportRead();
    return super.placemark;
  }

  @override
  set placemark(Placemark value) {
    _$placemarkAtom.reportWrite(value, super.placemark, () {
      super.placemark = value;
    });
  }

  final _$starsAtom = Atom(name: '_InformationControllerBase.stars');

  @override
  StarsModel get stars {
    _$starsAtom.reportRead();
    return super.stars;
  }

  @override
  set stars(StarsModel value) {
    _$starsAtom.reportWrite(value, super.stars, () {
      super.stars = value;
    });
  }

  final _$star1Atom = Atom(name: '_InformationControllerBase.star1');

  @override
  bool get star1 {
    _$star1Atom.reportRead();
    return super.star1;
  }

  @override
  set star1(bool value) {
    _$star1Atom.reportWrite(value, super.star1, () {
      super.star1 = value;
    });
  }

  final _$star2Atom = Atom(name: '_InformationControllerBase.star2');

  @override
  bool get star2 {
    _$star2Atom.reportRead();
    return super.star2;
  }

  @override
  set star2(bool value) {
    _$star2Atom.reportWrite(value, super.star2, () {
      super.star2 = value;
    });
  }

  final _$star3Atom = Atom(name: '_InformationControllerBase.star3');

  @override
  bool get star3 {
    _$star3Atom.reportRead();
    return super.star3;
  }

  @override
  set star3(bool value) {
    _$star3Atom.reportWrite(value, super.star3, () {
      super.star3 = value;
    });
  }

  final _$star4Atom = Atom(name: '_InformationControllerBase.star4');

  @override
  bool get star4 {
    _$star4Atom.reportRead();
    return super.star4;
  }

  @override
  set star4(bool value) {
    _$star4Atom.reportWrite(value, super.star4, () {
      super.star4 = value;
    });
  }

  final _$star5Atom = Atom(name: '_InformationControllerBase.star5');

  @override
  bool get star5 {
    _$star5Atom.reportRead();
    return super.star5;
  }

  @override
  set star5(bool value) {
    _$star5Atom.reportWrite(value, super.star5, () {
      super.star5 = value;
    });
  }

  final _$mediaAtom = Atom(name: '_InformationControllerBase.media');

  @override
  double get media {
    _$mediaAtom.reportRead();
    return super.media;
  }

  @override
  set media(double value) {
    _$mediaAtom.reportWrite(value, super.media, () {
      super.media = value;
    });
  }

  final _$getUserMarkerAsyncAction =
      AsyncAction('_InformationControllerBase.getUserMarker');

  @override
  Future getUserMarker() {
    return _$getUserMarkerAsyncAction.run(() => super.getUserMarker());
  }

  final _$salveStarsAsyncAction =
      AsyncAction('_InformationControllerBase.salveStars');

  @override
  Future salveStars(int value) {
    return _$salveStarsAsyncAction.run(() => super.salveStars(value));
  }

  final _$_InformationControllerBaseActionController =
      ActionController(name: '_InformationControllerBase');

  @override
  dynamic setStars(StarsModel value) {
    final _$actionInfo = _$_InformationControllerBaseActionController
        .startAction(name: '_InformationControllerBase.setStars');
    try {
      return super.setStars(value);
    } finally {
      _$_InformationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic loadStars() {
    final _$actionInfo = _$_InformationControllerBaseActionController
        .startAction(name: '_InformationControllerBase.loadStars');
    try {
      return super.loadStars();
    } finally {
      _$_InformationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userMarker: ${userMarker},
marker: ${marker},
itemsMenu: ${itemsMenu},
favorite: ${favorite},
iconsAssList: ${iconsAssList},
loading: ${loading},
placemark: ${placemark},
stars: ${stars},
star1: ${star1},
star2: ${star2},
star3: ${star3},
star4: ${star4},
star5: ${star5},
media: ${media}
    ''';
  }
}
